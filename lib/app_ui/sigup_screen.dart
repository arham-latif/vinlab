import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/app_ui/app_components/app_net_tag.dart';
import 'package:vinlab_new/app_ui/login_screen.dart';
import 'package:vinlab_new/app_ui/my_widgets/my_small_button.dart';
import 'package:vinlab_new/app_ui/my_widgets/textfield_with_title.dart';
import 'package:vinlab_new/controllers/signup_controller.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController _signUpController = Get.put(SignUpController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                textAlign: TextAlign.justify,
                "Please provide your basic information to create an account for you...",
              ),
            ),
            const SizedBox(
              height: 30,
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
                    /// FirstName field start from here
                    ///
                    MyTextFieldWithTitle(
                      titleText: "First Name",
                      fieldController: _signUpController.firstNameController,
                      validate: _signUpController.stringLenValidate,
                    ),

                    ///
                    /// LastName field start from here
                    ///
                    MyTextFieldWithTitle(
                      titleText: "Last Name",
                      fieldController: _signUpController.lastNameController,
                      validate: _signUpController.stringLenValidate,
                    ),

                    ///
                    /// Email field start from here
                    ///
                    MyTextFieldWithTitle(
                      titleText: "Email",
                      fieldController: _signUpController.emailController,
                      validate: _signUpController.emailValidate,
                    ),

                    ///
                    /// Password field start from here
                    ///
                    MyTextFieldWithTitle(
                      titleText: "Password",
                      fieldController: _signUpController.passwordController,
                      isPassword: true,
                      validate: _signUpController.passwordValidate,
                    ),

                    ///
                    /// Password field start from here
                    ///
                    MyTextFieldWithTitle(
                      titleText: "Repeat Password",
                      fieldController:
                          _signUpController.confirmPasswordController,
                      isPassword: true,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter your password again";
                        }
                        if (value !=
                            _signUpController.passwordController.text) {
                          return "Passwords don't match";
                        }
                        return null;
                      },
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
                /// Signup Button starts from here
                ///
                MySmallButton(
                  titleText: "Sign Up",
                  onPressed: () {
                    if (formKey.currentState != null &&
                        formKey.currentState!.validate()) {
                      _signUpController.registerUser();
                    }

                    // myPageRouteTransition(
                    //   context: context,
                    //   pageRouteName: LogInScreen(),
                    //   soundPath: "audio/screenTransition5.mp3",
                    // );

                    // Get.to(const LogInScreen());
                  },
                ),

                ///
                /// Back Button starts from here
                ///
                MySmallButton(
                  titleText: "Back",
                  onPressed: () => Get.back(),
                  bgColor: Colors.white.withOpacity(.8),
                  fgColor: Colors.red,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed: () {
                    myPageRouteTransition(
                      context: context,
                      pageRouteName: LogInScreen(),
                      soundPath: "audio/screenTransition5.mp3",
                    );

                    // Get.to(const LogInScreen());
                  },
                  child: Text(
                    "Login here",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
            Divider(
              color: AppColors.appPrimaryBlackCLr.withOpacity(.3),
              thickness: 1.5,
            ),
            const AppNetTag(),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
