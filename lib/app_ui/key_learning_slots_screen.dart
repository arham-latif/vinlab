import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/app_ui/learning_image_screen.dart';
import 'package:vinlab_new/app_ui/learning_slot_model/learning_slot_model.dart';
import 'package:vinlab_new/app_ui/my_widgets/my_small_button.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class KeyLearningSlotScreen extends StatelessWidget {
  const KeyLearningSlotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController decodeVinController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "Key Learning Slots",
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
              Text(
                "Select Brand",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
              ),
              const Divider(),
              const SizedBox(
                height: 12,
              ),
              ListView.builder(
                  itemCount: learningSlots.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, indexBrand) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 3),
                      color: Colors.white,
                      child: ExpansionTile(
                        backgroundColor:
                            AppColors.appPrimaryRedCLr.withOpacity(.2),
                        collapsedBackgroundColor: Colors.green.withOpacity(.2),
                        title: Text(
                            learningSlots[indexBrand].brandName.toString()),
                        // backgroundColor: AppColors.appPrimaryRedCLr,
                        //   collapsedBackgroundColor: Colors.green,
                        children: [
                          ListView.builder(
                              itemCount: learningSlots[indexBrand]
                                  .brandModelYears.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, indexModel) {
                                return Container(
                                  // margin: EdgeInsets.only(bottom: 6),
                                  width: double.infinity,
                                  child: TextButton.icon(
                                    icon: const Icon(Icons.forward),
                                    onPressed: () {
                                      Get.to(
                                        LearningImageScreen(
                                          modelName: learningSlots[indexBrand]
                                              .brandModelYears[indexModel]
                                              .year
                                              .toString(),
                                          imagePath: learningSlots[indexBrand]
                                              .brandModelYears[indexModel]
                                              .imagePath,
                                        ),
                                      );
                                    },
                                    label: Text(
                                      learningSlots[indexBrand]
                                          .brandModelYears[indexModel]
                                          .year
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                );
                              }),
                        ],
                      ),
                    );
                  }),
              SizedBox(height: Get.height * .3),
              const AppTagPoweredBy(),
            ],
          ),
        ),
      ),
    );
  }
}
