import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinlab_new/app_ui/home_screen.dart';

import '../widgets/toaster.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');
  RxBool isLoading = false.obs;

  String? usernameValidate(String? text) {
    if (text == null || text.isEmpty) {
      return "Enter your username/email";
    }
    if (!text.contains("@") && !emailRegex.hasMatch(text)) {
      return "Please enter valid email address";
    }
    return null;
  }

  String? passwordValidate(String? text) {
    if (text == null || text.isEmpty) {
      return "Enter your password";
    }
    return null;
  }

  Future<void> login() async {
    final url = Uri.parse('http://vinlab-6678db1ce141.herokuapp.com/login');

    final Map<String, String> requestBody = {
      'email': emailController.text,
      'password': passwordController.text,
    };

    try {
      isLoading.value = true;
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(requestBody),
      );
      print(response);

      final Map<String, dynamic> responseData = json.decode(response.body);

      var body = json.decode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("password", passwordController.text);
        prefs.setString("user", jsonEncode(responseData["user"]));
        prefs.setString("token", responseData["token"]);

        Get.offAll(() => const HomeScreen());
        Toaster.success("Success", body["message"]);

        isLoading.value = false;
      } else {
        if (kDebugMode) {
          print(body["message"]);
        }
        Toaster.error("Error", body["message"]);

        isLoading.value = false;
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error occurred: $error');
      }
      Toaster.error("Error", "Failed to fetch user details");
      isLoading.value = false;
    }
  }
}
