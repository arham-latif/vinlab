import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AboutGroupDialogue extends StatelessWidget {
  const AboutGroupDialogue({
    super.key,
    required this.groupName,
    required this.members,
    required this.createdOn,
  });

  final String groupName;
  final String members;
  final DateTime createdOn;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.black,
      child: FittedBox(
        child: AlertDialog(
          backgroundColor: Colors.black,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          title: Text(
            'Group Details',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: Colors.white),
          ),
          titlePadding: const EdgeInsets.symmetric(vertical: 12),
          content: FittedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  color: Colors.white24,
                  height: 1,
                  width: Get.size.width * .5,
                ),
                Text(
                  'Group Name: $groupName',
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'Members: $members',
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'Created Date: ${DateFormat('yyyy-MM-dd').format(createdOn)}',
                  style: const TextStyle(color: Colors.white),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  alignment: Alignment.center,
                  color: Colors.white24,
                  height: 1,
                  width: Get.size.width * .5,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(12)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Close',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
