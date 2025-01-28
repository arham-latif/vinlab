import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/advance_btn_screen.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/basic_subscription/basic_subscription_home.dart';
import 'package:vinlab_new/app_ui/login_screen.dart';
import 'package:vinlab_new/app_ui/my_widgets/my_home_button.dart';
import 'package:vinlab_new/app_ui/my_widgets/my_home_text.dart';
import 'package:vinlab_new/app_ui/request_history_screen.dart';
import 'package:vinlab_new/app_ui/spare_parts_OEM_screen.dart';
import 'package:vinlab_new/app_ui/vincheck_screen.dart';
import 'package:vinlab_new/controllers/home_controller.dart';
import 'package:vinlab_new/utils/app_colors.dart';
import 'package:vinlab_new/utils/app_meta_data.dart';
import 'package:vinlab_new/utils/generateds.dart';

import '../helpers/subscription_timers/trail_version_manager.dart';
import '../widgets/toaster.dart';
import 'fast_code_screen/fast_code_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController _homeController = Get.put(HomeController());
  final TrialVersionManagerController _trialVersionManagerController =
      Get.put(TrialVersionManagerController());
  bool trialEnded = false;

  void _startBasicTrial() async {
    // Handle trial start logic
    await _trialVersionManagerController.startTrial(trailName: "basic");

    final prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString("user")!);
    Get.back();
    Get.to(BasicSubscriptionHome(
      isSubscribe: user["basicSubscription"],
    ));
  }

  void _startAdvanceTrial() async {
    // Handle trial start logic
    await _trialVersionManagerController.startTrial(trailName: "advance");

    final prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString("user")!);
    Get.back();
    Get.to(AdvanceBtnScreen(
      isSubscribed: user["advanceSubscription"],
    ));
  }

  @override
  void initState() {
    _trialVersionManagerController.checkStatus("advance");
    _trialVersionManagerController.checkStatus("basic");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryRedCLr,
        title: Text(
          AppMetaData.homeScreenName,
        ),
        centerTitle: true,
        leading: Container(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 12,
              ),
              const Divider(),
              const MyHomeText(myText: "Credit Remaining: 00"),
              const Divider(),
              const SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black.withOpacity(.5),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ///
                    /// QuickCde Button starts from here
                    ///
                    MyHomeButton(
                      titleText: "Fast Code",
                      iconPath: AppIcons.appIconQuickCodeIcon,
                      onPressed: () {
                        myPageRouteTransition(
                          context: context,
                          pageRouteName: const FastCodeScreen(),
                          soundPath: "audio/screenTransition5.mp3",
                        );
                        // Get.to(QuickCodeScreen());
                      },
                    ),
                    Divider(
                      color: Colors.black.withOpacity(.5),
                      height: 0,
                    ),

                    ///
                    /// QuickCde Button starts from here
                    ///
                    // MyHomeButton(
                    //   titleText: "Fast Code",
                    //   iconPath: AppIcons.appIconQuickCodeIcon,
                    //   onPressed: () {
                    //     myPageRouteTransition(
                    //       context: context,
                    //       pageRouteName: QuickCodeScreen(),
                    //       soundPath: "audio/screenTransition5.mp3",
                    //     );
                    //     // Get.to(QuickCodeScreen());
                    //   },
                    // ),
                    // Divider(
                    //   color: Colors.black.withOpacity(.5),
                    //   height: 0,
                    // ),

                    ///
                    /// Request History Button starts from here
                    ///
                    MyHomeButton(
                      titleText: "Request History",
                      iconPath: AppIcons.appIconCheckHistoryIcon,
                      onPressed: () {
                        myPageRouteTransition(
                          context: context,
                          pageRouteName: const RequestHistoryScreen(),
                          soundPath: "audio/screenTransition5.mp3",
                        );
                        // Get.to(RequestHistoryScreen());
                      },
                    ),
                    Divider(
                      color: Colors.black.withOpacity(.5),
                      height: 0,
                    ),

                    ///
                    /// VinCheck Button starts from here
                    ///
                    MyHomeButton(
                      titleText: "Vin Check",
                      iconPath: AppIcons.appIconVinCheckIcon,
                      onPressed: () {
                        myPageRouteTransition(
                          context: context,
                          pageRouteName: const VinCheckScreen(),
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
                    /// Find-OEM-VIN Button starts from here
                    ///
                    MyHomeButton(
                      titleText: "Find OEM Part by VIN",
                      iconPath: "assets/icons/sparePartsByOEM.png",
                      onPressed: () {
                        myPageRouteTransition(
                          context: context,
                          pageRouteName: const SparePartsByOEMScreen(),
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
                    /// Advance_Key_Program Button starts from here
                    ///
                    MyHomeButton(
                      titleText: "Basic Key Program",
                      iconPath: "assets/icons/advanceBtnIcon.jpg",
                      onPressed: () async {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        var user = jsonDecode(prefs.getString("user")!);
                        if (user["basicSubscription"]) {
                          DateTime basicExpireDate =
                              DateTime.parse(user["basicExpireDate"]);
                          DateTime currentTime = DateTime.now();

                          bool isTrialActive = user["basicSubscription"] &&
                                  currentTime.isAfter(basicExpireDate)
                              ? false
                              : true;

                          isTrialActive
                              ? myPageRouteTransition(
                                  context: context,
                                  pageRouteName: BasicSubscriptionHome(
                                    isSubscribe: user["basicSubscription"],
                                  ),
                                  soundPath: "audio/screenTransition5.mp3",
                                )
                              : showModalBottomSheet(
                                  context: context,
                                  enableDrag: true,
                                  isScrollControlled: true,
                                  // This makes the sheet resize dynamically
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom, // Adjusts for keyboard
                                      ),
                                      child: SingleChildScrollView(
                                        child: TrialBottomSheet(
                                          trialName: "basic_trail_start_time",
                                          onStartTrialPressed: _startBasicTrial,
                                          onSubscriptionPressed: () {
                                            Get.to(BasicSubscriptionHome(
                                              isSubscribe:
                                                  user["basicSubscription"],
                                            ));
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                );
                        } else if (user["basicTrial"]) {
                          myPageRouteTransition(
                            context: context,
                            pageRouteName: BasicSubscriptionHome(
                              isSubscribe: user["basicSubscription"],
                            ),
                            soundPath: "audio/screenTransition5.mp3",
                          );
                        } else {
                          showModalBottomSheet(
                            context: context,
                            enableDrag: true,
                            isScrollControlled: true,
                            // This makes the sheet resize dynamically
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context)
                                      .viewInsets
                                      .bottom, // Adjusts for keyboard
                                ),
                                child: SingleChildScrollView(
                                  child: TrialBottomSheet(
                                    trialName: "basic_trail_start_time",
                                    onStartTrialPressed: _startBasicTrial,
                                    onSubscriptionPressed: () {
                                      Get.to(BasicSubscriptionHome(
                                        isSubscribe: user["basicSubscription"],
                                      ));
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                    Divider(
                      color: Colors.black.withOpacity(.5),
                      height: 0,
                    ),

                    ///
                    /// Advance_Key_Program Button starts from here
                    ///
                    MyHomeButton(
                      titleText: "Advance Key Program",
                      iconPath: "assets/icons/advanceBtnIcon.jpg",
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        var user = json.decode(prefs.getString("user")!);
                        // DateTime advanceExpireDate =
                        //     DateTime.parse(user["advanceExpireDate"]);
                        // DateTime currentTime = DateTime.now();
                        // bool isTrialActive =
                        //     currentTime.isAfter(advanceExpireDate)
                        //         ? false
                        //         : true;
                        if (user["advanceSubscription"]) {
                          DateTime basicExpireDate =
                              DateTime.parse(user["advanceExpireDate"]);
                          DateTime currentTime = DateTime.now();

                          bool isTrialActive = user["advanceSubscription"] &&
                                  currentTime.isAfter(basicExpireDate)
                              ? false
                              : true;

                          isTrialActive
                              ? myPageRouteTransition(
                                  context: context,
                                  pageRouteName: AdvanceBtnScreen(
                                    isSubscribed: user["advanceSubscription"],
                                  ),
                                  soundPath: "audio/screenTransition5.mp3",
                                )
                              : showModalBottomSheet(
                                  context: context,
                                  enableDrag: true,
                                  isScrollControlled: true,
                                  // This makes the sheet resize dynamically
                                  builder: (BuildContext context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom, // Adjusts for keyboard
                                      ),
                                      child: SingleChildScrollView(
                                        child: TrialBottomSheet(
                                          trialName: "advance_trail_start_time",
                                          onStartTrialPressed:
                                              _startAdvanceTrial,
                                          onSubscriptionPressed: () {
                                            Get.to(BasicSubscriptionHome(
                                              isSubscribe:
                                                  user["advanceSubscription"],
                                            ));
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                );
                        } else if (user["advanceTrial"]) {
                          myPageRouteTransition(
                            context: context,
                            pageRouteName: AdvanceBtnScreen(
                              isSubscribed: user["advanceSubscription"],
                            ),
                            soundPath: "audio/screenTransition5.mp3",
                          );
                        } else {
                          showModalBottomSheet(
                            context: context,
                            enableDrag: true,
                            isScrollControlled: true,
                            // This makes the sheet resize dynamically
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context)
                                      .viewInsets
                                      .bottom, // Adjusts for keyboard
                                ),
                                child: SingleChildScrollView(
                                  child: TrialBottomSheet(
                                    trialName: "advance_trail_start_time",
                                    onStartTrialPressed: _startAdvanceTrial,
                                    onSubscriptionPressed: () {
                                      Get.to(AdvanceBtnScreen(
                                        isSubscribed:
                                            user["advanceSubscription"],
                                      ));
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                    Divider(
                      color: Colors.black.withOpacity(.5),
                      height: 0,
                    ),

                    ///
                    /// Logout Button starts from here
                    ///
                    MyHomeButton(
                      titleText: "Logout",
                      iconPath: AppIcons.appLogOutIcon,
                      isForwardIcon: false,
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        prefs.remove("email");
                        prefs.remove("password");
                        prefs.remove("token");
                        Toaster.success("Success", "Successfully logged out");
                        myPageRouteTransition(
                          context: context,
                          pageRouteName: const LogInScreen(),
                          soundPath: "audio/screenTransition5.mp3",
                        );

                        // Get.offAll(LogInScreen());
                      },
                    ),
                  ],
                ),
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

class TrialBottomSheet extends StatefulWidget {
  const TrialBottomSheet(
      {Key? key,
      required this.trialName,
      required this.onStartTrialPressed,
      required this.onSubscriptionPressed})
      : super(key: key);
  final String trialName;
  final Function() onStartTrialPressed;
  final Function() onSubscriptionPressed;

  @override
  _TrialBottomSheetState createState() => _TrialBottomSheetState();
}

class _TrialBottomSheetState extends State<TrialBottomSheet> {
  bool isTrialActive = false;
  bool isTrialExpired = false;
  final HomeController _homeController = Get.find();
  final TrialVersionManagerController _trialVersionManagerController =
      Get.find();

  @override
  void initState() {
    super.initState();
    _checkTrialStatus();
  }

  Future<void> _checkTrialStatus() async {
    final prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString("user")!);
    String trial = widget.trialName.contains("basic") ? "basic" : "advance";
    DateTime currentTime = DateTime.now();
    DateTime expireTime = DateTime.parse(user["${trial}TrialExpireTime"]);
    final isActive = currentTime.isAfter(expireTime) ? false : true;
    final isExpired = !currentTime.isAfter(expireTime)
        ? false
        : expireTime.year == 2023
            ? false
            : true;

    setState(() {
      isTrialActive = isActive;
      isTrialExpired = isExpired;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      // height: Get.height* .7,
      child: Obx(
        () => _homeController.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Column(
                mainAxisSize: MainAxisSize.min,
                // Ensures the column takes only the necessary space
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.workspace_premium,
                    semanticLabel: "Premium Subscription",
                    color: Colors.grey,
                    size: Get.height * .1,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Free Trial",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Start your 24-hour free trial now and enjoy full access to premium features!",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 20),
                  Obx(
                    () => ElevatedButton(
                      onPressed:
                          isTrialExpired ? null : widget.onStartTrialPressed,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: const Size(double.infinity, 40),
                        backgroundColor:
                            isTrialExpired ? Colors.grey : Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isTrialExpired
                                ? "Free Trial Expired"
                                : "Start Free Trial",
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          !_trialVersionManagerController.isLoading.value
                              ? Container()
                              : const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator())
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Divider(),
                  Text(
                    widget.trialName == "advance_trail_start_time"
                        ? "Advance Subscription"
                        : "Basic Subscription",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.trialName == "advance_trail_start_time"
                        ? "Unlock all features for only \$29.99/month."
                        : "Unlock all features for only \$18.99/month.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: const Size(double.infinity, 40),
                    ),
                    onPressed: () {
                      _homeController.makePayment(
                          widget.trialName == "advance_trail_start_time"
                              ? 29.99
                              : 18.99,
                          "USD",
                          widget.trialName == "advance_trail_start_time"
                              ? "advance"
                              : "basic");
                    },
                    child: const Text("Subscribe Now"),
                  ),
                ],
              ),
      ),
    );
  }
}
