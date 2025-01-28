import 'package:flutter/material.dart';

class AdvanceButton extends StatelessWidget {
  const AdvanceButton({super.key, required this.name, required this.onTap});

  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade300,
        foregroundColor: Colors.white,
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            const Icon(Icons.forward),
          ],
        ),
      ),
    );
  }
}