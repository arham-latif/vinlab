import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class GroupMember {
  final String name;
  final bool isAdmin;

  GroupMember({required this.name, this.isAdmin = false});
}

class AdminBottomSheet extends StatefulWidget {
  dynamic members;

  AdminBottomSheet({required this.members});

  @override
  State<AdminBottomSheet> createState() => _AdminBottomSheetState();
}

class _AdminBottomSheetState extends State<AdminBottomSheet> {
  @override
  Widget build(BuildContext context) {
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
                return ListTile(
                  title: Text(member["firstName"]),
                  trailing: PopupMenuButton<String>(
                    onSelected: (String result) {
                      switch (result) {
                        case 'Delete':
                          String _name = "";
                          setState(() {
                            _name = widget.members[index].name;
                            widget.members.removeAt(index);
                          });
                          if (_name != "") {
                            Get.snackbar("User Deleted!",
                                "$_name is deleted successfully...",
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor:
                                    AppColors.appPrimaryRedCLr.withOpacity(.2));
                          }

                          break;
                        case 'Make Admin':
                          Get.snackbar(
                            "Admin Created!",
                            "${widget.members[index].name} is now an admin of the group...",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor:
                                AppColors.appPrimaryRedCLr.withOpacity(.2),
                          );
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'Delete',
                        child: Text('Delete'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Make Admin',
                        child: Text('Make Admin'),
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
