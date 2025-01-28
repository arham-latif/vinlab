import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/button_model.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import '../app_components/my_app_bar.dart';

class AdvanceDataShowScreen extends StatefulWidget {
  const AdvanceDataShowScreen({super.key, required this.programData});

  final ButtonModel programData;

  @override
  State<AdvanceDataShowScreen> createState() => _AdvanceDataShowScreenState();
}

class _AdvanceDataShowScreenState extends State<AdvanceDataShowScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: MyAppBar(
        pageTitle: widget.programData.btnName,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // ListView.builder(
            //     itemCount: programData.imagesDescriptions.length,
            //     shrinkWrap: true,
            //     physics: const NeverScrollableScrollPhysics(),
            //     itemBuilder: (context, index) {
            //       return Container(
            //           color: Colors.green.shade200,
            //           // color: Colors.white,
            //           margin: const EdgeInsets.only(top: 12),
            //           child: ListTile(
            //             title: Image.asset(
            //               programData.imagesDescriptions[index].imagePath,
            //               fit: BoxFit.fitWidth,
            //               width: double.infinity,
            //             ),
            //             subtitle: Padding(
            //               padding:
            //                   const EdgeInsets.only(top: 8.0, bottom: 8.0),
            //               child: ElevatedButton(
            //                 style: ElevatedButton.styleFrom(
            //                     backgroundColor: Colors.green),
            //                 onPressed: () {
            //                   Get.to(
            //                     LearningImageScreen(
            //                       modelName: programData.btnName,
            //                       imagePath: programData
            //                           .imagesDescriptions[index].imagePath,
            //                     ),
            //                   );
            //                 },
            //                 child: Row(
            //                   mainAxisAlignment:
            //                       MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     SizedBox(
            //                       width:
            //                           MediaQuery.of(context).size.width * .6,
            //                       child: Text(
            //                         programData
            //                             .imagesDescriptions[index].imageDesc,
            //                       ),
            //                     ),
            //                     const Icon(Icons.forward),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ));
            //     }),

            SizedBox(
              height: MediaQuery.of(context).size.height -
                  ((kBottomNavigationBarHeight + kToolbarHeight) + 100),
              width: double.infinity,
              child: PhotoView(
                imageProvider: AssetImage(
                  widget.programData.imagesDescriptions[_index].imagePath,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              color: Colors.green,
              child: Text(
                widget.programData.imagesDescriptions[_index].imageDesc,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NextBackButton(
                  name: "<< Back",
                  onTap: () {
                    if (_index != 0) {
                      setState(() {
                        _index--;
                      });
                    } else if (_index == 0) {
                      Get.snackbar(
                        "Index Limit !",
                        "This is first image!",
                        snackPosition: SnackPosition.TOP,
                        colorText: Colors.white,
                        borderRadius: 10,
                        backgroundColor: Colors.black45,
                        duration: const Duration(seconds: 1),
                      );
                    }
                  },
                ),
                Text(
                  "${_index + 1}/${widget.programData.imagesDescriptions.length}",
                ),
                NextBackButton(
                  name: "Next >>",
                  onTap: () {
                    if (_index !=
                        (widget.programData.imagesDescriptions.length - 1)) {
                      setState(() {
                        _index++;
                      });
                    } else if (_index ==
                        (widget.programData.imagesDescriptions.length - 1)) {
                      Get.snackbar(
                        "Index Limit !",
                        "This is last image!",
                        snackPosition: SnackPosition.TOP,
                        colorText: Colors.white,
                        borderRadius: 10,
                        backgroundColor: Colors.black45,
                        duration: const Duration(seconds: 1),
                      );
                    }
                  },
                ),
              ],
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
    );
  }
}

class NextBackButton extends StatelessWidget {
  const NextBackButton({super.key, required this.name, required this.onTap});

  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: onTap,
      child: Text(
        name,
      ),
    );
  }
}
