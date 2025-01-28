import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Toaster {
  static error(String title, String message) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        messageText: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w400, color: Colors.white, fontSize: 16),
        ),
        titleText: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
        ),
      );
    }
  }

  static success(String title, String message) {
    if (!Get.isSnackbarOpen) {
      Get.snackbar(
        title,
        message,
        backgroundColor: Colors.green,
        colorText: Colors.white,
        messageText: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w400, color: Colors.white, fontSize: 16),
        ),
        titleText: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
        ),
      );
    }
  }
}
