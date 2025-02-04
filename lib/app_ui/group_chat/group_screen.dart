import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:vinlab_new/app_ui/group_chat/video_preview.dart';
import 'package:vinlab_new/controllers/chat_room_controller.dart';
import 'package:vinlab_new/widgets/toaster.dart';

import 'about_group.dart';
import 'admin_access_screen.dart';

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
  static const Color primaryCarColor =
      Color(0xFFD32F2F); // Example: Ferrari Red
  static const Color secondaryCarColor =
      Color(0xFF424242); // Example: Dark Grey
  static const TextStyle messageTextStyle = TextStyle(fontFamily: 'RobotoMono');
  final ChatRoomController _chatRoomController = Get.find();

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
    Future.delayed(const Duration(milliseconds: 500), () {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
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
        _scrollToBottom();
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
      if (response.statusCode == 200) {
        final List<dynamic> messageData = jsonDecode(response.body);
        setState(() {
          messages =
              messageData.map((msg) => Map<String, dynamic>.from(msg)).toList();
          isLoading = false;
        });
        _scrollToBottom();
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
      'senderId': {
        "_id": widget.userId,
        'firstName': user["firstName"],
        'lastName': user["lastName"],
        "email": user["email"]
      },
      'content': messageType == 'text' ? content : base64Media,
      'messageType': messageType,
    };

    // Emit message to the server through socket
    socket.emit('send_message', message);

    setState(() {
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
    _scrollToBottom();

    if (messageType == 'text') {
      _messageController.clear(); // Clear the input only for text messages
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.chatroom["name"],
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black, // Car-themed app bar
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.settings),
            onSelected: (String result) async {
              switch (result) {
                case 'leave':
                  if (_chatRoomController.myId.value ==
                          widget.chatroom["createdBy"]["_id"] ||
                      widget.chatroom["createdBy"]["email"]
                          .contains("vinlabs")) {
                    _chatRoomController.deleteChatroom(widget.chatroomId);
                    Get.back();
                    break;
                  } else {
                    Toaster.error("Error", "Only admin can delete the group!");
                    break;
                  }
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
                    backgroundColor: Colors.black,
                    builder: (BuildContext context) {
                      return AdminBottomSheet(
                        members: widget.chatroom["users"],
                        chatroomId: widget.chatroomId,
                        adminId: widget.chatroom["createdBy"]["_id"],
                        chatroom: widget.chatroom,
                      );
                    },
                  );
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'leave',
                child: Text('Delete Group'),
              ),
              const PopupMenuItem<String>(
                value: 'about',
                child: Text('About Group'),
              ),
              const PopupMenuItem<String>(
                value: 'admin',
                child: Text('Manage Members'),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          // Subtle car-related background (optional)
          image: DecorationImage(
            image: AssetImage(
                "assets/icons/background (4).jpg"), // Replace with your image
            fit: BoxFit.cover,
            opacity: 0.9, // Adjust opacity as needed
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: _buildMessageList(),
            ),
            _buildInputArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageList() {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : messages.isNotEmpty
            ? ListView.builder(
                controller: _scrollController,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  bool isMe = (message['sender'] is Map &&
                          message['sender']['_id'] != null)
                      ? message['sender']['_id'].toString() ==
                          widget.userId.toString()
                      : message['sender'].toString() ==
                          widget.userId.toString();
                  return _buildMessageBubble(message, isMe);
                },
              )
            : const Center(
                child: Text(
                  "No messages yet. Start chatting!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              );
  }

  Widget _buildMessageBubble(Map<String, dynamic> message, bool isMe) {
    final backgroundColor = isMe ? primaryCarColor : secondaryCarColor;
    final textColor =
        isMe ? Colors.white : Colors.white; // Text color based on bubble

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(12), // Slightly larger padding
        margin: const EdgeInsets.symmetric(
            vertical: 8, horizontal: 16), // More margin
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15), // More rounded corners
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              (() {
                if (message["sender"] is String) {
                  var user = _chatRoomController.allUsers.firstWhere(
                    (u) => u["_id"] == message["sender"],
                    orElse: () => null,
                  );

                  if (user != null) {
                    return "${user["firstName"]} ${user["lastName"]}";
                  } else {
                    return "Unknown User";
                  }
                } else {
                  return "${message["sender"]["firstName"]} ${message["sender"]["lastName"]}";
                }
              })(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 6), // Increased spacing
            _buildMessageContent(message, textColor), // Pass text color
          ],
        ),
      ),
    );
  }

  Widget _buildMessageContent(Map<String, dynamic> message, Color textColor) {
    switch (message["messageType"]) {
      case "text":
        return Text(
          message['content'],
          style: messageTextStyle.copyWith(
              color: textColor), // Apply car-themed text style
        );
      case "image":
        return SizedBox(
          height: 280,
          width: 220,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.memory(
              base64Decode(message['content']),
              fit: BoxFit.cover,
            ),
          ),
        );
      case "video":
        return SizedBox(
          height: 240,
          width: 280,
          child: VideoPreview(base64Video: message['content']),
        );
      default:
        return Container();
    }
  }

  Widget _buildInputArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 12.0), // Increased padding
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type your message...',
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(20), // Rounded input field
                  borderSide: const BorderSide(color: secondaryCarColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: primaryCarColor),
                  // Highlight on focus
                ),
                hintStyle: const TextStyle(color: Colors.white24),
                suffix: InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Choose Media",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
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
                                    const Text(
                                      "Image",
                                      style: TextStyle(color: Colors.white),
                                    ),
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
                                    const Text(
                                      "Video",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.attach_file,
                    color: primaryCarColor,
                    size: 20,
                  ),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.send,
                color: primaryCarColor), // Car-themed icon
            onPressed: () => _sendMessage(),
          ),
        ],
      ),
    );
  }
}
