import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinlab_new/widgets/toaster.dart';

import '../app_ui/group_chat/group_screen.dart';

class ChatRoomController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<dynamic> chatroomList = [].obs;
  TextEditingController chatroomName = TextEditingController();
  RxList<dynamic> allUsers = [].obs;
  RxList<dynamic> selectedUsers = [].obs;
  RxBool isPresent = false.obs;
  RxString myId = "".obs;

  isUserInGroups() async {
    final prefs = await SharedPreferences.getInstance();
    var me = json.decode(prefs.getString("user")!);
    myId.value = me["_id"];
    for (var group in chatroomList) {
      if (group['users'] != null) {
        for (var user in group['users']) {
          if (user['_id'] == me["_id"]) {
            isPresent.value = true;
          } else {
            isPresent.value = false;
          }
        }
      }
    }
  }

  fetchChatroomList() async {
    try {
      isLoading.value = true;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      final url = Uri.parse('http://192.168.10.23:5000/chatrooms');

      final response = await http.get(
        url,
        headers: {'Authorization': 'Bearer $token'},
      );
      print(json.decode(response.body));
      print(response.statusCode);

      final Map<String, dynamic> responseData = json.decode(response.body);

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

  updateChatroomUsers(String chatroomId, String userToRemove) async {
    try {
      isLoading.value = true;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      var user = json.decode(prefs.getString("user")!);

      final url = Uri.parse(
          'http://192.168.10.23:5000/chatroom/$chatroomId/user/$userToRemove');

      final response = await http.delete(
        url,
        headers: {'Authorization': 'Bearer $token'},
      );
      print(json.decode(response.body));

      final Map<String, dynamic> responseData = json.decode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        dynamic chatroom = responseData["chatroom"];
        print("chatroomcontroller");
        print(chatroom);
        await fetchChatroomList();
        Get.back();
        Get.back();
        print("///////////////////////////");
        dynamic thisChatroom = chatroomList.firstWhere(
            (chatroom) => chatroom["_id"].toString() == chatroomId.toString());
        print("///////////////////////////");
        Get.to(GroupScreen(
          chatroomId: chatroomId,
          userId: user["_id"],
          chatroom: thisChatroom,
        ));
      } else {
        Toaster.error("Error", "Failed to fetch chatroom list");
      }
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }

  Future<void> deleteChatroom(String chatroomId) async {
    final url = Uri.parse('http://192.168.10.23:5000/chatroom/$chatroomId');
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      final response = await http.delete(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      final Map<String, dynamic> responseData = json.decode(response.body);
      print(responseData);

      if (responseData["message"] ==
          "Chatroom and all messages deleted successfully") {
        Toaster.success("Success", responseData["message"]);
        fetchChatroomList();
      } else {
        Toaster.error("Error", "Failed to delete chatroom");
      }

      isLoading.value = false;
    } catch (e) {
      print(e);
      Toaster.error("Error", "Failed to delete chatroom");
    }
  }

  Future<void> createChatroom() async {
    final url = Uri.parse('http://192.168.10.23:5000/chatroom');
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    final name = chatroomName.text.trim();

    if (name.isEmpty) return;

    var user = jsonDecode(prefs.getString("user")!);

    if (!selectedUsers.contains("679a218d0e2aeaf17745febc")) {
      selectedUsers.add("679a218d0e2aeaf17745febc");
    }
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

      final url = Uri.parse('http://192.168.10.23:5000/users');

      final response = await http.get(
        url,
      );

      allUsers.value = json.decode(response.body);

      allUsers.removeWhere((thisUser) => thisUser["email"] == user["email"]);
      allUsers.removeWhere((thisUser) =>
          thisUser["_id"].toString() == "679a218d0e2aeaf17745febc");

      isLoading.value = false;
    } catch (e) {
      print(e);
    }
  }
}
