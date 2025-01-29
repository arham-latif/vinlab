import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/controllers/chat_room_controller.dart';
import 'package:vinlab_new/utils/app_colors.dart';
import 'package:vinlab_new/widgets/toaster.dart';

class GroupMember {
  final String name;
  final bool isAdmin;

  GroupMember({required this.name, this.isAdmin = false});
}

class AdminBottomSheet extends StatefulWidget {
  dynamic members;
  dynamic chatroom;
  final String chatroomId;
  final String adminId;

  AdminBottomSheet({
    super.key,
    required this.members,
    required this.chatroomId,
    required this.adminId,
    required chatroom,
  });

  @override
  State<AdminBottomSheet> createState() => _AdminBottomSheetState();
}

class _AdminBottomSheetState extends State<AdminBottomSheet> {
  final ChatRoomController _chatRoomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Total ${widget.members.length} Group Members',
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Divider(),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.members.length,
              itemBuilder: (context, index) {
                final member = widget.members[index];
                return ListTile(
                  title: Row(
                    children: [
                      Text(
                        "${member["firstName"]} ${member["lastName"]}",
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      member["_id"].toString() == widget.adminId.toString()
                          ? Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: const Text(
                                "Admin",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : member["email"].contains("vinlabs")
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: const Text(
                                    "Super Admin",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Container()
                    ],
                  ),
                  trailing: PopupMenuButton<String>(
                    color: Colors.white,
                    onSelected: member["_id"].toString() ==
                            _chatRoomController.myId.toString()
                        ? (result) {
                            Toaster.error(
                                "Error", "You cannot remove yourself!");
                          }
                        : member["email"].contains("vinlabs")
                            ? (result) {
                                Toaster.error(
                                    "Error", "You cannot remove super admin!");
                              }
                            : widget.adminId.toString() !=
                                    _chatRoomController.myId.value.toString()
                                ? (String result) {
                                    Toaster.error("Error",
                                        "Only Admins can remove a user");
                                  }
                                : (String result) {
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
