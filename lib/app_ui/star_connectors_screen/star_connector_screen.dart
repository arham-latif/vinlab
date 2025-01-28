import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/app_ui/learning_image_screen.dart';
import 'package:vinlab_new/app_ui/star_connectors_screen/connector_model.dart';
import 'package:vinlab_new/utils/app_colors.dart';

class StarConnectorsScreen extends StatelessWidget {
  const StarConnectorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(pageTitle: 'Star Connectors & 12+8'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
                itemCount: starConnectors.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    color: Colors.white,
                    child: ExpansionTile(
                      backgroundColor:
                          AppColors.appPrimaryRedCLr.withOpacity(.2),
                      collapsedBackgroundColor: Colors.green.withOpacity(.2),
                      title:
                          Text(starConnectors[index].connectorTitle.toString()),
                      // backgroundColor: AppColors.appPrimaryRedCLr,
                      //   collapsedBackgroundColor: Colors.green,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, top: 12, bottom: 6),
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Description:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          child: Text(
                            starConnectors[index].connectorDesc.toString(),
                          ),
                        ),
                        for (var image in starConnectors[index].connectorImages)
                          Container(
                            // margin: EdgeInsets.only(bottom: 6),
                            width: double.infinity,
                            child: TextButton.icon(
                              icon: const Icon(Icons.forward),
                              onPressed: () {
                                Get.to(
                                  LearningImageScreen(
                                    modelName: starConnectors[index]
                                        .connectorTitle
                                        .toString(),
                                    imagePath: image,
                                  ),
                                );
                              },
                              label: Text(
                                "View",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                }),
            const SizedBox(height: 90),
            const AppTagPoweredBy(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
