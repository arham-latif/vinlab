import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class MyTextFieldWithTitle extends StatelessWidget {
  MyTextFieldWithTitle(
      {super.key,
      required this.titleText,
      required this.fieldController,
      this.isPassword = false,
      this.validate});

  TextEditingController fieldController = TextEditingController();
  final String titleText;
  final isPassword;
  final validate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: .5,
          color: Colors.indigo.withOpacity(.5),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: Get.width * .34,
            // height: 50,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  width: .5,
                  color: Colors.indigo.withOpacity(.5),
                ),
                color: Colors.indigo.withOpacity(.1)),
            child: Center(
              child: Text(
                titleText,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(
            width: Get.width * .445,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              height: 40,
              child: Center(
                child: TextFormField(
                  validator: (value) => validate(value),
                  controller: fieldController,
                  cursorColor: Colors.black12,
                  cursorHeight: .5,
                  cursorWidth: .5,
                  obscureText: isPassword,
                  cursorRadius: Radius.zero,
                  style: isPassword
                      ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(height: 1.5),
                  // expands: false,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    // isDense: false,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.appPrimaryRedCLr,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 3,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
