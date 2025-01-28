import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinlab_new/app_ui/login_screen.dart';

import '../widgets/toaster.dart';

class SignUpController extends GetxController {
  // firstname
  // lastname
  // email
  // password

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');
  RxBool isLoading = false.obs;

  String? stringLenValidate(String? text) {
    if (text == null || text.isEmpty) {
      return "Field required*";
    }
    if (text.length < 3) {
      return "Must be at least 3 characters long";
    }
    return null;
  }

  String? emailValidate(String? text) {
    if (text == null || text.isEmpty) {
      return "Enter your username/email";
    }
    if (!text.contains("@") && !emailRegex.hasMatch(text)) {
      return "Please enter valid email";
    }
    return null;
  }

  String? passwordValidate(String? text) {
    RegExp regex = RegExp(r'^(?=.*?[0-9])');
    if (text == null || text.isEmpty) {
      // return 'Please enter password';
      return "Enter your password";
    }
    if (text.length < 8) {
      // return "Password must be at least 8 characters long";
      return "At least 8 characters long";
    } else if (!regex.hasMatch(text)) {
      return "Have at least one number";
    }
    return null;
  }

  Future<void> registerUser() async {
    final url = Uri.parse('http://vinlab-6678db1ce141/register');

    final Map<String, String> requestBody = {
      'firstName': firstNameController.text,
      'lastName': lastNameController.text,
      'email': emailController.text,
      'password': passwordController.text,
    };

    print(requestBody);

    try {
      isLoading.value = true;
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(requestBody),
      );

      final Map<String, dynamic> responseData = json.decode(response.body);

      var body = json.decode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        if (kDebugMode) {
          print('Registration successful');
        }
        if (kDebugMode) {
          print(responseData);
        }

        final prefs = await SharedPreferences.getInstance();
        prefs.setString("user", jsonEncode(body["user"]));
        prefs.setString("password", passwordController.text);
        prefs.setString("token", responseData["token"]);
        emailController.clear();
        passwordController.clear();
        firstNameController.clear();
        lastNameController.clear();
        confirmPasswordController.clear();

        Get.offAll(() => const LogInScreen());
        Toaster.success("Success", body["message"]);

        isLoading.value = false;
      } else {
        if (kDebugMode) {
          print('Failed to register. Status code: ${response.statusCode}');
        }
        if (body != null) {
          Toaster.error("Error", body["message"] ?? body["error"]);
        }
        isLoading.value = false;
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error occurred: $error');
      }
      Toaster.error("Error", "Failed to register user");
      isLoading.value = false;
    }
  }
}
