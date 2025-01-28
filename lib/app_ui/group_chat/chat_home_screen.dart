import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinlab_new/app_ui/group_chat/group_screen.dart';
import 'package:vinlab_new/controllers/chat_room_controller.dart';
import 'package:vinlab_new/utils/app_colors.dart';

import 'create_new_group_dialog.dart';

class ChatHomeScreen extends StatefulWidget {
  const ChatHomeScreen({super.key});

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  List<String> groups = [
    'General chat',
    'Residential locksmith',
    'Commercial locksmith',
    'Automotive locksmith',
    'German car keys',
    'USA group',
    'Buy and sell',
  ];

  bool _isSearching = false;
  String _searchText = "";
  final TextEditingController _searchController = TextEditingController();
  final ChatRoomController _chatRoomController = Get.put(ChatRoomController());

  @override
  void initState() {
    _chatRoomController.fetchChatroomList();
    _chatRoomController.fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryRedCLr,
        title: _isSearching
            ? TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search Groups...',
                  hintStyle: TextStyle(
                    color: Colors.white24.withOpacity(.5),
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
                onChanged: (text) {
                  setState(() {
                    _searchText = text;
                  });
                },
              )
            : const Text("Chat & Discussions"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchText = "";
                  _searchController.clear();
                }
              });
            },
            icon: Icon(_isSearching ? Icons.close : Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.appPrimaryRedCLr.withOpacity(.8),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const CreateGroupDialog();
            },
          ).then((value) {
            if (value != null) {
              setState(() {
                groups.add(value['groupName'].toString());
              });
              Get.snackbar(
                "Created Successful",
                "Group created successfully...",
                snackPosition: SnackPosition.BOTTOM,
              );
            }
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Obx(
        () => _chatRoomController.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : _chatRoomController.chatroomList.isEmpty
                ? const Center(
                    child: Text("No groups yet"),
                  )
                : ListView.builder(
                    itemCount: _chatRoomController.chatroomList.length,
                    itemBuilder: (context, index) {
                      return RandomAvatar(
                        chatroom: _chatRoomController.chatroomList[index],
                      );
                    },
                  ),
      ),
    );
  }
}

class RandomAvatar extends StatelessWidget {
  const RandomAvatar({super.key, required this.chatroom});

  final dynamic chatroom;

  @override
  Widget build(BuildContext context) {
    final Color randomColor = getRandomColor();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: ListTile(
            splashColor: randomColor,
            onTap: () async {
              final prefs = await SharedPreferences.getInstance();
              var user = json.decode(prefs.getString("user")!);
              // Get.to(GroupScreen(title: chatroom["name"]));
              Get.to(GroupScreen(
                  chatroomId: chatroom["_id"],
                  userId: user["_id"],
                  chatroom: chatroom));
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: const BorderSide(
                color: Colors.black12,
                width: .5,
                style: BorderStyle.solid,
              ),
            ),
            leading: CircleAvatar(
              radius: 40,
              backgroundColor: randomColor,
              child: const Icon(
                Icons.groups,
                color: Colors.white,
                size: 40,
              ),
            ),
            tileColor: randomColor.withOpacity(.2),
            title: Text(
              chatroom["name"],
              style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              chatroom["users"].length.toString(),
              style: GoogleFonts.abel(),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ),
        Divider(
          color: Colors.grey.shade200,
        ),
      ],
    );
  }

  Color getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256), // Red
      random.nextInt(256), // Green
      random.nextInt(256), // Blue
      1.0, // Opacity
    );
  }
}
