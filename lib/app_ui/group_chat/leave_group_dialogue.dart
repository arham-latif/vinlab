import 'package:flutter/material.dart';


class LeaveGroupDialog extends StatelessWidget {
  final String groupName;

  const LeaveGroupDialog({Key? key, required this.groupName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Leave Group',
        textAlign: TextAlign.center,
      ),
      content: Text('Are you sure you want to leave the group "$groupName"?'),
      actions: <Widget>[
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Close the dialog and perform leave group action
                Navigator.of(context).pop(true); // Return true indicating 'Yes'
              },
              child: const Text('Yes'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Close the dialog without leaving group
                Navigator.of(context)
                    .pop(false); // Return false indicating 'Cancel'
              },
              child: const Text('Cancel'),
            ),
          ],
        ),
      ],
    );
  }
}
