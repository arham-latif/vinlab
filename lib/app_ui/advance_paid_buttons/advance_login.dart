// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vinlab_new/app_ui/advance_paid_buttons/advance_btn_screen.dart';
//
// import '../../utils/app_colors.dart';
// import '../app_components/app_net_tag.dart';
// import '../login_screen.dart';
// import '../my_widgets/my_small_button.dart';
// import '../my_widgets/textfield_with_title.dart';
//
//
// class AdvanceLogin extends StatelessWidget {
//   const AdvanceLogin({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     TextEditingController userNameController = TextEditingController();
//     TextEditingController passwordController = TextEditingController();
//     TextEditingController resetEmailController = TextEditingController();
//     return Scaffold(
//
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: Get.height * .1,
//             ),
//             Center(
//               child: Text(
//                 "Please Login",
//                 style: Theme.of(context).textTheme.headlineSmall!.copyWith(
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.appPrimaryBlackCLr.withOpacity(.5),
//                 ),
//               ),
//             ),
//             Divider(
//               color: AppColors.appPrimaryBlackCLr.withOpacity(.3),
//               thickness: 1.5,
//             ),
//             const SizedBox(
//               height: 40,
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(
//                 horizontal: Get.width * .07,
//               ),
//               height: 30,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   border: Border.all(
//                     width: .5,
//                   ),
//                   color: AppColors.appPrimaryRedCLr.withOpacity(.7)),
//               child: Center(
//                 child: Text(
//                   textAlign: TextAlign.center,
//                   "* Username or password incorrect",
//                   style: Theme.of(context).textTheme.titleSmall,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: .5,
//                   color: Colors.indigo.withOpacity(.5),
//                 ),
//               ),
//               margin: EdgeInsets.symmetric(
//                 horizontal: Get.width * .1,
//               ),
//               child: Column(
//                 children: [
//                   ///
//                   /// Username field start from here
//                   ///
//                   MyTextFieldWithTitle(
//                     titleText: "Username",
//                     fieldController: userNameController,
//                   ),
//
//                   ///
//                   /// Password field start from here
//                   ///
//                   MyTextFieldWithTitle(
//                     titleText: "Password",
//                     fieldController: passwordController,
//                     isPassword: true,
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ///
//                 /// LoginButton starts from here
//                 ///
//                 MySmallButton(
//                   titleText: "Login",
//                   onPressed: () {
//                     // Get.to(const RedirectingScreen());
//
//                     myPageRouteTransition(
//                       pageRouteName: const AdvanceBtnScreen(),
//                       context: context,
//                       soundPath: "audio/CarEngineStarting.mp3",
//
//                     );
//                   },
//                 ),
//
//                 ///
//                 /// Back Button starts from here
//                 ///
//                 MySmallButton(
//                   titleText: "Back",
//                   onPressed: () => Get.back(),
//                   bgColor: Colors.white.withOpacity(.8),
//                   fgColor: Colors.red,
//                 ),
//               ],
//             ),
//
//             const SizedBox(
//               height: 20,
//             ),
//
//             const SizedBox(
//               height: 30,
//             ),
//             Center(
//               child: Text(
//                 "Lost password?",
//                 style: Theme.of(context).textTheme.headlineSmall!.copyWith(
//                   fontWeight: FontWeight.w500,
//                   color: AppColors.appPrimaryBlackCLr.withOpacity(.5),
//                 ),
//               ),
//             ),
//
//             const SizedBox(
//               height: 12,
//             ),
//
//             ///
//             /// Reset email TextField start from here
//             ///
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 MyTextFieldWithTitle(
//                   titleText: "Enter your Email Address or Username",
//                   fieldController: resetEmailController,
//                 ),
//               ],
//             ),
//
//             const SizedBox(
//               height: 20,
//             ),
//
//             ///
//             /// Get email button start from here
//             ///
//             MySmallButton(
//               titleText: "Get Password",
//               onPressed: () {},
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//
//             Divider(
//               color: AppColors.appPrimaryBlackCLr.withOpacity(.3),
//               thickness: 1.5,
//             ),
//             const AppNetTag(),
//             const SizedBox(
//               height: 30,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
