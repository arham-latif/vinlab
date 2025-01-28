import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, required this.pageTitle}) : super(key: key);

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appPrimaryRedCLr,
      title: Text(pageTitle),
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.home),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
