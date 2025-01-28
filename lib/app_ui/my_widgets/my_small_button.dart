import 'package:flutter/material.dart';

class MySmallButton extends StatelessWidget {
  const MySmallButton({
    Key? key,
    required this.titleText,
    required this.onPressed,
    this.bgColor = Colors.red,
    this.fgColor = Colors.white,
  }) : super(key: key);

  final String titleText;
  final Function() onPressed;
  final Color bgColor;
  final Color fgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          titleText,
        ),
      ),
    );
  }
}
