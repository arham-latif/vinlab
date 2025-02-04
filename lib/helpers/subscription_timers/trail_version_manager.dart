import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/toaster.dart';

class TrialVersionManagerController extends GetxController {
  RxBool isLoading = false.obs;
  static const trialDuration = Duration(hours: 24);
  RxBool trialEnded = false.obs;

  // Store the start time of the trial
  Future<void> startTrial({required String trailName}) async {
    isLoading.value = true;
    try {
      final url =
          Uri.parse('http://vinlab-6678db1ce141.herokuapp.com/start-trial');
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      var user = json.decode(prefs.getString("user")!);
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode({"trialType": trailName, "userId": user["_id"]}),
      );
      print(json.decode(response.body));

      if (response.statusCode == 200 || response.statusCode == 201) {
        Toaster.success("Success", "Your $trailName trial has started");
      }
      final responseData = jsonDecode(response.body);
      print(responseData);
      prefs.setString("user", jsonEncode(responseData["user"]));

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;

      Toaster.error("Error", "Failed to start $trailName trial");
    }
  }

  // Store the start time of the trial
  Future<void> setTrialEnd({required String trailName}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(trailName, "trailEnded");
  }

  // Check if the trial is active
  Future<bool> isTrialActive({required String trailName}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString("user")!);
    String trial = trailName.contains("basic") ? "basic" : "advance";
    DateTime currentTime = DateTime.now();
    DateTime expireTime = DateTime.parse(user["${trial}TrialExpireTime"]);

    final isActive = currentTime.isAfter(expireTime)
        ? false
        : expireTime.year == 2023
            ? false
            : true;

    return isActive;
  }

  // Check if the trial is active
  Future<bool> isTrialEnded({required String trailName}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString("user")!);
    String trial = trailName.contains("basic") ? "basic" : "advance";
    DateTime currentTime = DateTime.now();
    DateTime expireTime = DateTime.parse(user["${trial}TrialExpireTime"]);
    final isExpired = !currentTime.isAfter(expireTime)
        ? false
        : expireTime.year == 2023
            ? false
            : true;

    return isExpired;
  }

  checkStatus(String name) async {
    trialEnded.value = await isTrialEnded(
      trailName: name,
    );
    if (trialEnded.value) {
      updateTrialStatus(name, "trial", false);
    }
    trialEnded.value = false;
  }

  // Get remaining time in seconds
  Future<int> getRemainingTime({required String trailName}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString("user")!);
    String trial = trailName.contains("basic") ? "basic" : "advance";
    final String? endTimeString = user["${trial}TrialExpireTime"];

    if (endTimeString == null) {
      return 0; // Trial hasn't started
    }

    final DateTime endTime = DateTime.parse(endTimeString);
    final DateTime now = DateTime.now();

    if (now.isAfter(endTime)) {
      return 0; // Trial expired
    }

    final Duration remainingTime = endTime.difference(now);
    return remainingTime.inSeconds;
  }

  updateTrialStatus(String name, String type, value) async {
    try {
      final url =
          Uri.parse('http://vinlab-6678db1ce141.herokuapp.com/update-status');
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      var user = json.decode(prefs.getString("user")!);
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode({
          "type": type,
          "name": name,
          "userId": user["_id"],
          "value": value
        }),
      );
      if (kDebugMode) {
        print(json.decode(response.body));
      }
      var userBody = json.decode(response.body);
      prefs.setString("user", jsonEncode(userBody["user"]));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
