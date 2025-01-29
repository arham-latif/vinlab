import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/controllers/chat_room_controller.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class GroupMember {
  final String name;
  final bool isAdmin;

  GroupMember({required this.name, this.isAdmin = false});
}

class AdminBottomSheet extends StatefulWidget {
  dynamic members;
  final String chatroomId;

  AdminBottomSheet(
      {super.key, required this.members, required this.chatroomId});

  @override
  State<AdminBottomSheet> createState() => _AdminBottomSheetState();
}

class _AdminBottomSheetState extends State<AdminBottomSheet> {
  final ChatRoomController _chatRoomController = Get.find();

  @override
  Widget build(BuildContext context) {
    print("members: ${widget.members}");
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Total ${widget.members.length} Group Members',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.members.length,
              itemBuilder: (context, index) {
                final member = widget.members[index];
                print("//////////// MEMBERS /////////////");
                print(member);
                return ListTile(
                  title: Text(member["firstName"]),
                  trailing: PopupMenuButton<String>(
                    onSelected: (String result) {
                      switch (result) {
                        case 'Remove User':
                          _chatRoomController.updateChatroomUsers(
                              widget.chatroomId, member["_id"]);
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'Remove User',
                        child: Text('Remove User'),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.appPrimaryRedCLr,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
