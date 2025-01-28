import 'package:flutter/material.dart';

class MyHomeButton extends StatelessWidget {
  const MyHomeButton({
    Key? key,
    required this.iconPath,
    required this.titleText,
    required this.onPressed,
    this.isForwardIcon = true,
  }) : super(key: key);

  final String iconPath;
  final String titleText;
  final bool isForwardIcon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        shadowColor: Colors.red,
        shape: const RoundedRectangleBorder(
          side: BorderSide.none,
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(
                  fit: BoxFit.contain,
                  iconPath,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(titleText,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      )),
            ],
          ),
          isForwardIcon
              ? Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                  color: Colors.black.withOpacity(.7),
                )
              : Container(),
        ],
      ),
    );
  }
}
