import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinlab_new/widgets/toaster.dart';

class ChatRoomController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<dynamic> chatroomList = [].obs;
  TextEditingController chatroomName = TextEditingController();
  RxList<dynamic> allUsers = [].obs;
  RxList<dynamic> selectedUsers = [].obs;

  fetchChatroomList() async {
    try {
      isLoading.value = true;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      final url =
          Uri.parse('http://vinlab-6678db1ce141.herokuapp.com/chatrooms');

      final response = await http.get(
        url,
        headers: {'Authorization': 'Bearer $token'},
      );
      print(json.decode(response.body));
      print(response.statusCode);

      final Map<String, dynamic> responseData = json.decode(response.body);
      // print(responseData["chatrooms"]);

      if (response.statusCode == 200 || response.statusCode == 201) {
        chatroomList.value = responseData["chatrooms"];
        print(chatroomList);
      } else {
        Toaster.error("Error", "Failed to fetch chatroom list");
      }
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }

  Future<void> createChatroom() async {
    final url = Uri.parse('http://vinlab-6678db1ce141.herokuapp.com/chatroom');
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    final name = chatroomName.text.trim();

    if (name.isEmpty) return;

    var user = jsonDecode(prefs.getString("user")!);

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'name': name,
          'createdBy': user["_id"],
          'users': selectedUsers,
        }),
      );

      final Map<String, dynamic> responseData = json.decode(response.body);
      print(responseData);

      if (response.statusCode == 201 || response.statusCode == 200) {
        fetchChatroomList();
        Get.back();
      } else {
        Toaster.error("Error", "Failed to create chatroom");
      }

      isLoading.value = false;
    } catch (e) {
      print(e);
      Toaster.error("Error", "Failed to create chatroom");
    }
  }

  fetchUsers() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      var user = jsonDecode(prefs.getString("user")!);
      print(user["email"]);

      final url = Uri.parse('http://vinlab-6678db1ce141.herokuapp.com/users');

      final response = await http.get(
        url,
      );

      allUsers.value = json.decode(response.body);

      allUsers.removeWhere((thisUser) => thisUser["email"] == user["email"]);

      isLoading.value = false;
    } catch (e) {
      print(e);
    }
  }
}
