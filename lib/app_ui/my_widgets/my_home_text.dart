import 'package:flutter/material.dart';

class MyHomeText extends StatelessWidget {
  const MyHomeText({
    Key? key,
    required this.myText,
  }) : super(key: key);

  final String myText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        myText,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
