import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/home_screen.dart';
import 'package:vinlab_new/app_ui/login_screen.dart';
import 'package:vinlab_new/generated/assets.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Future<int> navigate() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString("token") != null) {
      return 1;
    }
    return 0;
  }

  @override
  void initState() {
    audioPlayer.play(AssetSource("audio/Car_Starting.mp3"));
    super.initState();

    Timer(const Duration(seconds: 6), () async {
      int isLogin = await navigate();
      if (isLogin == 1) {
        Get.off(() => const HomeScreen());
      } else {
        Get.off(() => const LogInScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.appPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: Get.height * .01,
            // ),
            Container(
              height: 300,
              // color: Colors.red,
              width: double.infinity,
              child: Image.asset(
                height: 300,
                // color: Colors.red,
                width: double.infinity,
                fit: BoxFit.cover,
                "assets/icons/appLogoIcon.png",
              ),
            ),

            const Divider(),
            Container(
              width: double.infinity,
              height: Get.height * .2,
              decoration: BoxDecoration(
                color: AppColors.appPrimaryRedCLr.withOpacity(.1),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      Assets.iconsCarSpeedoMeter,
                      // width: 100,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            const SizedBox(height: 12),
            const AppTagPoweredBy(),
            const Divider(),
            // SizedBox(height: Get.height * .2),
            // const CupertinoActivityIndicator(radius: 25),
          ],
        ),
      ),
    );
  }
}
