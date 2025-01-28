import 'package:flutter/material.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/advance_data_show_screen.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/button_model.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/app_ui/login_screen.dart';

class BasicSubscriptionBtnMainPage extends StatelessWidget {
  const BasicSubscriptionBtnMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "Basic Key Programs",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300),
                  onPressed: () {
                    myPageRouteTransition(
                      context: context,
                      pageRouteName: AdvanceDataShowScreen(
                        programData: gmKeyProgramBasicSubscription,
                      ),
                      soundPath: "audio/screenTransition5.mp3",
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(gmKeyProgramBasicSubscription.btnName),
                      const Icon(Icons.forward)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const AppTagPoweredBy(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
