// import 'dart:async';
// import 'dart:convert';
//
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:vinlab_new/app_ui/login_screen.dart';
//
// import '../widgets/toaster.dart';
//
// class ApiCall {
//   static final client = http.Client();
//   static const String apiBaseURL = "http://localhost:5000/register";
//
//   static Future<dynamic> httpGetRequest(String endPoint,
//       {bool isSocial = true, Map<String, String>? query}) async {
//     http.Response response;
//     try {
//       String social = "";
//       final prefs = await SharedPreferences.getInstance();
//       if (isSocial) {
//         social = prefs.getString("social")!;
//       }
//
//       final url = Uri.https(apiBaseURL, '$social$endPoint', query);
//
//       final token = prefs.getString("token");
//
//       response = await client.get(
//         url,
//         headers: {
//           'Content-type': 'application/json',
//           'Accept': 'application/json',
//           'Authorization': token ?? 'query'
//         },
//       );
//
//       return _returnListResponse(response);
//     } on TimeoutException catch (_) {
//       Get.snackbar(
//           "Error", 'DATA SERVER CAN’T BE REACHED, PLEASE TRY AGAIN SHORTLY');
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   static Future<dynamic> getData(String link) async {
//     http.Response response;
//     try {
//       final prefs = await SharedPreferences.getInstance();
//
//       final url = Uri.parse(link);
//
//       final token = prefs.getString("token");
//
//       print(token);
//       print(url);
//
//       response = await client.get(
//         url,
//         headers: {
//           'Content-type': 'application/json',
//           'Accept': 'application/json',
//           'Authorization': token ?? 'query'
//         },
//       );
//
//       return response.body;
//     } on TimeoutException catch (_) {
//       Get.snackbar(
//           "Error", 'DATA SERVER CAN’T BE REACHED, PLEASE TRY AGAIN SHORTLY');
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   static Future<dynamic> httpDeleteRequest(String endPoint,
//       {required bool isSocial, Map<String, String>? query}) async {
//     http.Response response;
//     try {
//       String social = "";
//       final prefs = await SharedPreferences.getInstance();
//       if (isSocial) {
//         social = prefs.getString("social")!;
//       }
//       final url = Uri.https(apiBaseURL, '$social$endPoint', query);
//       final token = prefs.getString("token");
//       response = await client.delete(
//         url,
//         headers: {
//           'Content-type': 'application/json',
//           'Accept': 'application/json',
//           'Authorization': token ?? ''
//         },
//       );
//       return _returnListResponse(response);
//     } on TimeoutException catch (_) {
//       Get.snackbar(
//           "Error", 'DATA SERVER CAN’T BE REACHED, PLEASE TRY AGAIN SHORTLY');
//     } catch (e) {
//       print(e);
//       // Get.snackbar("Error", e.toString());
//     }
//   }
//
//   static Future<dynamic> postRequestData(String endPoint, bool isSocial,
//       {Map<String, String>? query, required Object body}) async {
//     http.Response response;
//     try {
//       String social = '';
//       if (isSocial) {
//         final prefs = await SharedPreferences.getInstance();
//         social = prefs.getString("social")!;
//       }
//       final url = Uri.https(apiBaseURL, '$social$endPoint', query);
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString("token");
//
//       print(url);
//       response = await client.post(url, body: jsonEncode(body), headers: {
//         'Content-type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': token ?? ''
//       });
//       return _returnListResponse(response);
//     } on TimeoutException catch (_) {
//       Toaster.error(
//           "Error", "DATA SERVER CAN’T BE REACHED, PLEASE TRY AGAIN SHORTLY");
//     } catch (e) {
//       // Toaster.error("Error", e.toString());
//       rethrow;
//     }
//   }
//
//   static Future<dynamic> putRequestData(String endPoint, bool isSocial,
//       {Map<String, String>? query, required Object body}) async {
//     http.Response response;
//     try {
//       String social = '';
//       if (isSocial) {
//         final prefs = await SharedPreferences.getInstance();
//         social = prefs.getString("social")!;
//       }
//       final url = Uri.https(apiBaseURL, '$social$endPoint', query);
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString("token");
//       response = await client.put(url, body: jsonEncode(body), headers: {
//         'Content-type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': token ?? ''
//       });
//       return _returnListResponse(response);
//     } on TimeoutException catch (_) {
//       Get.snackbar(
//           "Error", 'DATA SERVER CAN’T BE REACHED, PLEASE TRY AGAIN SHORTLY');
//     } catch (e) {
//       print("///////////// ERROR ///////////");
//       print(e);
//       rethrow;
//       // Get.snackbar("Error", e.toString());
//     }
//   }
// }
//
// Map<String, dynamic>? stringToJson(String body) {
//   try {
//     return json.decode(body.toString());
//   } catch (e) {
//     return null;
//   }
// }
//
// dynamic _returnListResponse(http.Response response) async {
//   var responseJson = stringToJson(response.body);
//   switch (response.statusCode) {
//     case 200:
//       return responseJson;
//     case 202:
//       return responseJson;
//     case 401:
//       if (!response.request!.url.toString().contains("/apis/auth") ||
//           response.request!.url.toString().contains("/apis/auth/me")) {
//         SharedPreferences.getInstance().then((prefs) {
//           prefs.remove("user");
//           prefs.remove("token");
//           Get.offAll(const LogInScreen());
//         });
//       }
//       Toaster.error(
//           "Error",
//           responseJson?["error"] != null
//               ? responseJson?["error"]?["message"]
//               : responseJson?["message"] ?? "Session Expire");
//
//       SharedPreferences.getInstance().then((prefs) {
//         prefs.remove("user");
//         prefs.remove("token");
//       });
//       return responseJson;
//     case 404:
//       return responseJson;
//     case 500:
//       print("////////////////////////////");
//       String error = "Bad Gateway";
//       if (responseJson != null && responseJson["error"] != null) {
//         error = responseJson["error"].runtimeType == String
//             ? responseJson["error"]
//             : responseJson["error"]["reason"].runtimeType == String &&
//                     responseJson["error"]["reason"].toString().trim().isNotEmpty
//                 ? responseJson["error"]["reason"]
//                 : responseJson["error"]["message"];
//       }
//       print(error);
//       Toaster.error("Error", error);
//       return responseJson;
//     case 502:
//       Toaster.error("Error", "Bad Gateway.");
//       return responseJson;
//     default:
//       Toaster.error(
//           "Error",
//           responseJson?["error"] != null
//               ? responseJson?["error"]?["message"]
//               : "Bad Gateway");
//   }
// }
