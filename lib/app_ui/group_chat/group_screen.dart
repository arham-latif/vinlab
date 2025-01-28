import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:vinlab_new/app_ui/group_chat/video_preview.dart';

import '../../utils/app_colors.dart';
import 'about_group.dart';
import 'admin_access_screen.dart';
import 'leave_group_dialogue.dart';

class GroupScreen extends StatefulWidget {
  final String chatroomId;
  final String userId;
  final dynamic chatroom;

  const GroupScreen(
      {super.key,
      required this.chatroomId,
      required this.userId,
      required this.chatroom});

  @override
  _GroupScreenState createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  late IO.Socket socket;
  final TextEditingController _messageController = TextEditingController();
  List<Map<String, dynamic>> messages = [];
  bool isLoading = true;
  final ScrollController _scrollController = ScrollController();

  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      _sendMessage(mediaFile: File(pickedFile.path), mediaType: "image");
      Get.back();
    }
  }

  Future<void> _pickVideo() async {
    final XFile? pickedFile =
        await _picker.pickVideo(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      _sendMessage(mediaFile: File(pickedFile.path), mediaType: "video");
      Get.back();
    }
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchMessages();
    _initializeSocket();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
  }

  @override
  void dispose() {
    socket.disconnect();
    socket.dispose();
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  // Initialize Socket.IO connection
  void _initializeSocket() {
    socket = IO.io(
      'http://vinlab-6678db1ce141.herokuapp.com',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .enableAutoConnect()
          .build(),
    );

    socket.onConnect((_) {
      print('Connected to socket server');
      socket.emit('join_chatroom', widget.chatroomId);
    });

    socket.on('new_message', (data) {
      if (data['chatroom'] == widget.chatroomId) {
        setState(() {
          // Only add new messages from the socket (not the one you just sent)
          if (data['sender'] != widget.userId) {
            messages.add({
              'sender': data['sender'],
              'content': data['content'],
              'messageType': data['messageType'],
            });
          }
        });
      }
    });

    socket.onDisconnect((_) {
      print('Disconnected from socket server');
    });
  }

  // Fetch existing messages from the API
  Future<void> _fetchMessages() async {
    final url = Uri.parse(
        'http://vinlab-6678db1ce141.herokuapp.com/messages/${widget.chatroomId}');

    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      print(jsonDecode(response.body));
      if (response.statusCode == 200) {
        final List<dynamic> messageData = jsonDecode(response.body);
        setState(() {
          messages =
              messageData.map((msg) => Map<String, dynamic>.from(msg)).toList();
          isLoading = false;
        });
      } else {
        throw Exception('Failed to fetch messages');
      }
    } catch (e) {
      print('Error fetching messages: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _sendMessage({File? mediaFile, String? mediaType}) async {
    final prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString("user")!);
    String content = _messageController.text.trim();

    if (mediaFile == null && content.isEmpty)
      return; // Ensure there's something to send

    String? base64Media;
    if (mediaFile != null) {
      // Convert media file (image or video) to Base64
      final bytes = await mediaFile.readAsBytes();
      base64Media = base64Encode(bytes);
    }

    // Determine the message type
    final messageType = mediaType ?? 'text'; // Defaults to 'text'

    final message = {
      'chatroomId': widget.chatroomId,
      'senderId': widget.userId,
      'content': messageType == 'text' ? content : base64Media,
      'messageType': messageType,
    };

    // Emit message to the server through socket
    socket.emit('send_message', message);

    setState(() {
      // Add the message to the UI (locally), but only once when sending it
      messages.add({
        'sender': {
          "_id": widget.userId,
          'firstName': user["firstName"],
          'lastName': user["lastName"],
          "email": user["email"]
        },
        'content': messageType == 'text' ? content : base64Media,
        'messageType': messageType,
      });
    });

    // Clear the message input and scroll to the bottom
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });

    if (messageType == 'text') {
      _messageController.clear(); // Clear the input only for text messages
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(widget.chatroom["name"]),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.settings),
            onSelected: (String result) {
              switch (result) {
                case 'leave':
                  showDialog(
                      context: context,
                      builder: (context) {
                        return LeaveGroupDialog(
                            groupName: widget.chatroom["name"]);
                      });
                  break;
                case 'about':
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AboutGroupDialogue(
                          groupName: widget.chatroom["name"],
                          members: widget.chatroom["users"].length.toString(),
                          createdOn:
                              DateTime.parse(widget.chatroom["createdAt"]),
                        );
                      });
                  break;
                case 'admin':
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return AdminBottomSheet(
                          members: widget.chatroom["users"]);
                    },
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'leave',
                child: Text('Leave Group'),
              ),
              const PopupMenuItem<String>(
                value: 'about',
                child: Text('About Group'),
              ),
              const PopupMenuItem<String>(
                value: 'admin',
                child: Text('Admins Access'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : messages.isNotEmpty
                    ? ListView.builder(
                        controller: _scrollController,
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final message = messages[index];
                          bool isMe = message['sender']['_id'].toString() ==
                                  widget.userId.toString()
                              ? true
                              : false;
                          print(message);

                          return Align(
                            alignment: isMe
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                color: isMe ? Colors.blue : Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "${message["sender"]["firstName"]} ${message["sender"]["lastName"]}"),
                                  message["messageType"] == "text"
                                      ? Text(
                                          message['content'],
                                          style: TextStyle(
                                              color: isMe
                                                  ? Colors.white
                                                  : Colors.black),
                                        )
                                      : message["messageType"] == "image"
                                          ? SizedBox(
                                              height: 250,
                                              width: 190,
                                              child: Image.memory(
                                                base64Decode(
                                                    message['content']),
                                              ),
                                            )
                                          : message["messageType"] == "video"
                                              ? SizedBox(
                                                  height: 200,
                                                  width: 250,
                                                  child: VideoPreview(
                                                    base64Video:
                                                        message['content'],
                                                  ),
                                                )
                                              : Container(
                                                  color: Colors.red,
                                                  width: 10,
                                                  height: 10,
                                                ),
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    : const Center(child: Text("No messages")),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Row(
              children: [
                IconButton(
                  icon:
                      Icon(Icons.attachment, color: AppColors.appPrimaryRedCLr),
                  // onPressed: _pickImage,
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Choose Media",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Image Picker Icon
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: _pickImage,
                                      icon: const Icon(Icons.image,
                                          size: 40, color: Colors.blue),
                                    ),
                                    const Text("Image"),
                                  ],
                                ),
                                // Video Picker Icon
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: _pickVideo,
                                      icon: const Icon(Icons.videocam,
                                          size: 40, color: Colors.red),
                                    ),
                                    const Text("Video"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                    icon: const Icon(Icons.send),
                    color: Colors.blue,
                    onPressed: () {
                      _sendMessage();
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
