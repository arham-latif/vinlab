import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/app_ui/lishi_training_model/lishi_training_model.dart';

class LishiTrainingScreen extends StatelessWidget {
  const LishiTrainingScreen({Key? key}) : super(key: key);


  void _launchYouTubeVideo(youtubeURL) async {
    String _appURL = youtubeURL;

    // URLs sent to YouTube app can't start with https

    if (_appURL.startsWith("https://")) {
      _appURL = _appURL.replaceFirst("https://", ""); // remove "https://" if it exists
    }

    try {
      await launch('youtube://$_appURL', forceSafariVC: false).then((bool isLaunch) async {
        print('isLaunch: $isLaunch');
        if (!isLaunch) {
          // Launch Success
          print("Launching in browser now ...");
          await launch(youtubeURL);
        } else {
          // Launch Fail
          print("YouTube app Launched!");
        }
      });
    } catch (e) {
      print("An error occurred: $e");
      await launch(youtubeURL);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "Lishi Training",
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
                "Select Model Name",
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
                  itemCount: lishiTrainingData.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Colors.green.withOpacity(.2)),
                        onPressed: () {
                          _launchYouTubeVideo(lishiTrainingData[index].vedioLink);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("#${index + 1}",style: const TextStyle(color: Colors.white),),
                            Text(lishiTrainingData[index].modelName,style: const TextStyle(color: Colors.blue),),
                            const Icon(Icons.forward),
                          ],
                        ));
                    // ListTile(
                    // tileColor: Colors.green.withOpacity(.2),
                    // leading: Text(index.toString()),
                    //   title: Text(lishiTrainingData[index].modelName));
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
