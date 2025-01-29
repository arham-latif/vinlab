import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../app_ui/advance_paid_buttons/advance_btn_screen.dart';
import '../app_ui/basic_subscription/basic_subscription_home.dart';
import '../widgets/toaster.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> makePayment(
      double amount, String currency, String subscription) async {
    isLoading.value = true;
    try {
      final url = Uri.parse('http://192.168.10.23:5000/create-payment-intent');
      final int amountInCents = (amount).round();
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      // Step 1: Call the backend API to create a PaymentIntent
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode({
          'amount': amountInCents.toString(), // Convert to an integer
          'currency': currency,
          'description': 'Test Payment',
        }),
      );
      print(json.decode(response.body));

      if (response.statusCode != 200) {
        throw Exception("Failed to create PaymentIntent: ${response.body}");
      }

      final responseData = jsonDecode(response.body);
      final clientSecret = responseData['clientSecret'];

      // Step 2: Confirm the PaymentIntent on the client side
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          style: ThemeMode.light,
          merchantDisplayName: 'VinLabs',
        ),
      );

      await Stripe.instance.presentPaymentSheet();

      isLoading.value = false;

      final updateUserUrl =
          Uri.parse('http://192.168.10.23:5000/transaction-success');
      var user = jsonDecode(prefs.getString("user")!);
      print(user);

      // Step 1: Call the backend API to create a PaymentIntent
      final userResponse = await http.post(
        updateUserUrl,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode({
          'userId': user["_id"], // Convert to an integer
          'subscriptionType': subscription,
        }),
      );
      print(json.decode(userResponse.body));
      var userBody = json.decode(userResponse.body);
      prefs.setString("user", jsonEncode(userBody["user"]));

      Toaster.success("Success", "Subscription successful!");
      if (subscription == "basic") {
        Get.to(const BasicSubscriptionHome(
          isSubscribe: true,
        ));
      } else {
        Get.to(const AdvanceBtnScreen(
          isSubscribed: true,
        ));
      }
    } on StripeException catch (e) {
      // Handle Stripe-specific errors
      print(e);
      isLoading.value = false;
      if (e.error.code == FailureCode.Canceled) {
        // Toaster.error("Error", e.error.message!);
      } else {
        Toaster.error("Error", "Payment Failed, Please try again shortly!");
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
      Toaster.error("Error", "Payment failed: $e");
    }
  }
}
