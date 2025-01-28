import 'package:flutter/material.dart';

class QuickCodeTextField extends StatelessWidget {
  QuickCodeTextField(
      {Key? key, required this.prefixText, required this.fieldController})
      : super(key: key);

  final String prefixText;
  TextEditingController fieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: fieldController,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          hintText: "(Optional)",
          hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(.3),
              ),
          contentPadding: const EdgeInsets.only(bottom: 35, right: 12),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: 12.0,
              right: prefixText == "Tech ID" ? 80 : 50,
            ),
            child: Text(
              prefixText,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
            ),
          ),
          prefixIconConstraints: BoxConstraints.loose(
            Size(200, 40),
          ),
        ),
      ),
    );
  }
}
