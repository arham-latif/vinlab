import 'package:flutter/material.dart';

class AppTagPoweredBy extends StatelessWidget {
  const AppTagPoweredBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: "Powered by",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.grey, fontWeight: FontWeight.w900),
          children: <TextSpan>[
            TextSpan(
              text: " Vinlabs",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
