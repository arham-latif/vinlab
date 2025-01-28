import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/app_ui/app_components/app_net_tag.dart';
import 'package:vinlab_new/app_ui/my_widgets/my_small_button.dart';
import 'package:vinlab_new/app_ui/my_widgets/textfield_with_title.dart';
import 'package:vinlab_new/app_ui/sigup_screen.dart';
import 'package:vinlab_new/controllers/login_controller.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final LoginController _loginController = Get.put(LoginController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: !_loginController.isLoading.value
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height * .1,
                  ),
                  Center(
                    child: Text(
                      "Please Login",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.appPrimaryBlackCLr.withOpacity(.5),
                          ),
                    ),
                  ),
                  Divider(
                    color: AppColors.appPrimaryBlackCLr.withOpacity(.3),
                    thickness: 1.5,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(
                  //     horizontal: Get.width * .07,
                  //   ),
                  //   height: 30,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(
                  //         width: .5,
                  //       ),
                  //       color: AppColors.appPrimaryRedCLr.withOpacity(.7)),
                  //   child: Center(
                  //     child: Text(
                  //       textAlign: TextAlign.center,
                  //       "* Username or password incorrect",
                  //       style: Theme.of(context).textTheme.titleSmall,
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: .5,
                        color: Colors.indigo.withOpacity(.5),
                      ),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: Get.width * .1,
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          ///
                          /// Username field start from here
                          ///
                          MyTextFieldWithTitle(
                            titleText: "Email",
                            fieldController: _loginController.emailController,
                            validate: _loginController.usernameValidate,
                          ),

                          ///
                          /// Password field start from here
                          ///
                          MyTextFieldWithTitle(
                            titleText: "Password",
                            fieldController:
                                _loginController.passwordController,
                            validate: _loginController.passwordValidate,
                            isPassword: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ///
                      /// LoginButton starts from here
                      ///
                      MySmallButton(
                        titleText: "Login",
                        onPressed: () {
                          if (formKey.currentState != null &&
                              formKey.currentState!.validate()) {
                            _loginController.login();
                          }
                        },
                      ),

                      ///
                      /// Back Button starts from here
                      ///
                      // MySmallButton(
                      //   titleText: "Back",
                      //   onPressed: () => Get.back(),
                      //   bgColor: Colors.white.withOpacity(.8),
                      //   fgColor: Colors.red,
                      // ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not registered yet? ",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextButton(
                        onPressed: () {
                          myPageRouteTransition(
                            context: context,
                            pageRouteName: const SignUpScreen(),
                            soundPath: "audio/screenTransition5.mp3",
                          );
                          // Get.to(const SignUpScreen());
                        },
                        child: Text(
                          "Signup here",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: AppColors.appPrimaryRedCLr,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Horizon',
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "Lost password?",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.appPrimaryBlackCLr.withOpacity(.5),
                          ),
                    ),
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  ///
                  /// Reset email TextField start from here
                  ///
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyTextFieldWithTitle(
                        titleText: "Enter your Email Address or Username",
                        fieldController: TextEditingController(),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  ///
                  /// Get email button start from here
                  ///
                  MySmallButton(
                    titleText: "Get Password",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Divider(
                    color: AppColors.appPrimaryBlackCLr.withOpacity(.3),
                    thickness: 1.5,
                  ),
                  const AppNetTag(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}

Future myPageRouteTransition({
  required BuildContext context,
  required Widget pageRouteName,
  required String soundPath,
}) async {
  final myPlayer = AudioPlayer();
  await myPlayer.play(AssetSource(soundPath));
  return Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) =>
              pageRouteName,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          }));
}
