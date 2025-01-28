import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/controllers/chat_room_controller.dart';

class CreateGroupDialog extends StatefulWidget {
  const CreateGroupDialog({super.key});

  @override
  State<CreateGroupDialog> createState() => _CreateGroupDialogState();
}

class _CreateGroupDialogState extends State<CreateGroupDialog> {
  final _formKey = GlobalKey<FormState>();
  final ChatRoomController _chatRoomController = Get.find();
  // final _adminNameController = TextEditingController();
  // List<String> selectedUsers = [];

  void _toggleSelection(String userId, bool isSelected) {
    setState(() {
      if (isSelected) {
        _chatRoomController.selectedUsers.add(userId);
        print(_chatRoomController.selectedUsers);
      } else {
        _chatRoomController.selectedUsers.remove(userId);
        print(_chatRoomController.selectedUsers);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create New Group'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: _chatRoomController.chatroomName,
              decoration: const InputDecoration(labelText: 'Group Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a group name';
                }
                return null;
              },
            ),
            // TextFormField(
            //   controller: _adminNameController,
            //   decoration: const InputDecoration(labelText: 'Admin Name'),
            //   validator: (value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Please enter an admin name';
            //     }
            //     return null;
            //   },
            // ),
            // DropdownButton<dynamic>(
            //   isExpanded: true,
            //   hint: const Text('Add Members'),
            //   items: _chatRoomController.allUsers.map((user) {
            //     return DropdownMenuItem<dynamic>(
            //       value: user["_id"],
            //       child: Text('${user['firstName']} ${user['lastName']}'),
            //     );
            //   }).toList(),
            //   onChanged: (newValue) {
            //     print(newValue);
            //   },
            // ),
            DropdownButton<dynamic>(
              isExpanded: true,
              hint: const Text('Add Members'),
              items: _chatRoomController.allUsers.map((user) {
                return DropdownMenuItem<dynamic>(
                  value: user["_id"],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${user['firstName']} ${user['lastName']}'),
                      Checkbox(
                        value: _chatRoomController.selectedUsers
                            .contains(user["_id"]),
                        onChanged: (isSelected) {
                          print(isSelected);
                          _toggleSelection(user["_id"], isSelected ?? false);
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                );
              }).toList(),
              onChanged:
                  (_) {}, // Leave empty since we're handling selection via checkboxes
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // If the form is valid, return the group details
              _chatRoomController.createChatroom();
              // Navigator.of(context).pop({
              //   'groupName': _chatRoomController.chatroomName,
              //   'adminName': _adminNameController.text,
              // });
            }
          },
          child: const Text('Create'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
