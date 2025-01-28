import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/home_screen.dart';
import 'package:vinlab_new/app_ui/login_screen.dart';
import 'package:vinlab_new/utils/app_colors.dart';

String clickButtonText =
    "Click here if you do not want to wait any longer (or if your browser does not automatically forward you).";

class RedirectingScreen extends StatefulWidget {
  const RedirectingScreen({Key? key}) : super(key: key);

  @override
  State<RedirectingScreen> createState() => _RedirectingScreenState();
}

class _RedirectingScreenState extends State<RedirectingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 6),
      () {
        myPageRouteTransition(
          context: context,
          pageRouteName: const HomeScreen(),
          soundPath: "audio/screenTransition5.mp3",
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * .1,
              ),
              Column(
                children: [
                  const Divider(),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "You will be redirected to protected area",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      child: Text(
                        clickButtonText,
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppColors.appPrimaryRedCLr,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(),
                ],
              ),
              SizedBox(
                height: Get.height * .1,
              ),
              const CupertinoActivityIndicator(
                radius: 25,
              ),
              const SizedBox(
                height: 30,
              ),
              const AppTagPoweredBy(),
            ],
          ),
        ),
      ),
    );
  }
}
