import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';

class LearningImageScreen extends StatelessWidget {
  const LearningImageScreen({
    Key? key,
    required this.modelName,
    required this.imagePath,
  }) : super(key: key);

  final String modelName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: MyAppBar(
        pageTitle: modelName,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // Image.asset('assets/keyLearningImages/buick/encore17_22.JPG'),
            Container(
              height: MediaQuery.of(context).size.height - (kBottomNavigationBarHeight + kToolbarHeight),
              width: double.infinity,
              child: PhotoView(
                // maxScale: PhotoViewComputedScale.covered * 2.0,
                // minScale: PhotoViewComputedScale.contained * 0.8,
                // initialScale: PhotoViewComputedScale.covered,
                imageProvider:  AssetImage(imagePath),//"assets/keyLearningImages/enclave18_24.JPG"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
