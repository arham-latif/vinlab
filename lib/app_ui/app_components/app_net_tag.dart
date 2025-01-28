import 'package:flutter/material.dart';

class AppNetTag extends StatelessWidget {
  const AppNetTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        "© CGI-Central, Net, 2002-2023",
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.grey,
            ),
      ),
    );
  }
}
