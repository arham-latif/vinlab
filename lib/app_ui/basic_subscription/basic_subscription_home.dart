import 'package:flutter/material.dart';
import 'package:vinlab_new/app_ui/trail_timer_helper.dart';

import '../app_components/app_tag_powered_by.dart';
import '../app_components/my_app_bar.dart';
import '../basic_subscription_btn/basic_subscription_btn_main_page.dart';
import '../key_learning_slots_screen.dart';
import '../lishi_training_screen.dart';
import '../login_screen.dart';
import '../mitsubishi_pin_codes_screen/MitsubishiPinCodesScreen.dart';
import '../my_widgets/my_home_button.dart';
import '../reflash_car_list/reflash_car_list.dart';
import '../reflash_ecu_location/reflash_ecu_location_screen.dart';
import '../star_connectors_screen/star_connector_screen.dart';

class BasicSubscriptionHome extends StatelessWidget {
  const BasicSubscriptionHome({super.key, required this.isSubscribe});

  final bool isSubscribe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "Basic Subscriptions",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            ///trail timer here...
            !isSubscribe
                ? Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: const TrailTimerHelper(
                      trailName: "basic_trail_start_time",
                    ),
                  )
                : Container(),
            Container(
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                children: [
                  ///
                  /// Key Learning Button starts from here
                  ///
                  MyHomeButton(
                      titleText: "Key Learning Slots",
                      iconPath: "assets/icons/keyLearningSlot.png",
                      onPressed: () {
                        myPageRouteTransition(
                          context: context,
                          pageRouteName: const KeyLearningSlotScreen(),
                          soundPath: "audio/screenTransition5.mp3",
                        );

                        // Get.to(LishiTrainingScreen());
                      }),
                  Divider(
                    color: Colors.black.withOpacity(.5),
                    height: 0,
                  ),

                  ///
                  /// Lishi Training Button starts from here
                  ///
                  MyHomeButton(
                    titleText: "Lishi Training",
                    iconPath: "assets/icons/lishiTraining.png",
                    onPressed: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: const LishiTrainingScreen(),
                        soundPath: "audio/screenTransition5.mp3",
                      );

                      // Get.to(VinCheckScreen());
                    },
                  ),
                  Divider(
                    color: Colors.black.withOpacity(.5),
                    height: 0,
                  ),

                  ///
                  /// ReflashCarList Button starts from here
                  ///
                  MyHomeButton(
                    titleText: "Reflash Car List",
                    iconPath: "assets/icons/reflashCarListIcon.png",
                    onPressed: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: const ReflashCarListScreen(),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    },
                  ),
                  Divider(
                    color: Colors.black.withOpacity(.5),
                    height: 0,
                  ),

                  ///
                  /// ReflashEcuLocation Button starts from here
                  ///
                  MyHomeButton(
                    titleText: "Reflash ECU Location",
                    iconPath: "assets/icons/ecuCarLocationIcon.png",
                    onPressed: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: const ReflashEcuLocationScreen(),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    },
                  ),
                  Divider(
                    color: Colors.black.withOpacity(.5),
                    height: 0,
                  ),

                  ///
                  /// MitsubishiPinCode Button starts from here
                  ///
                  MyHomeButton(
                    titleText: "Mitsubishi Pin Codes",
                    iconPath: "assets/icons/mitsubishiPinCodeIcon.jpg",
                    onPressed: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: const MitsubishiPinCodesScreen(),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    },
                  ),
                  Divider(
                    color: Colors.black.withOpacity(.5),
                    height: 0,
                  ),

                  ///
                  /// StarConnector Button starts from here
                  ///
                  MyHomeButton(
                    titleText: "Star Connector & 12+8",
                    iconPath: "assets/icons/starConnectorIcon.png",
                    onPressed: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: const StarConnectorsScreen(),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    },
                  ),
                  Divider(
                    color: Colors.black.withOpacity(.5),
                    height: 0,
                  ),

                  ///
                  /// GM_Key_Program Button starts from here
                  ///
                  MyHomeButton(
                    titleText: "GM Key Program",
                    iconPath: "assets/icons/gmKeyProgramIcon.jpg",
                    onPressed: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: const BasicSubscriptionBtnMainPage(),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Divider(
              color: Colors.grey.shade400,
              indent: 20,
              endIndent: 20,
              height: 0,
            ),
            const SizedBox(height: 30),
            const AppTagPoweredBy(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
