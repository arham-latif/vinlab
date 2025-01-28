import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/app_ui/my_widgets/my_small_button.dart';
import 'package:vinlab_new/utils/app_colors.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class VinCheckScreen extends StatefulWidget {
  const VinCheckScreen({Key? key}) : super(key: key);

  @override
  State<VinCheckScreen> createState() => _VinCheckScreenState();
}

class _VinCheckScreenState extends State<VinCheckScreen> {
  bool isProcess = false;
  Map<String, dynamic> carDetail = {};

  @override
  Widget build(BuildContext context) {
    Future<void> decodeVin({required String vinCode}) async {
      const String apiKey = "6AiAkO2efM587gnzKcaenUtPYUSYxqRvWbttSCT3";
      // var vin = "1HGEJ6129WL104842";
      var url =
          Uri.parse("https://api.api-ninjas.com/v1/vinlookup?vin=$vinCode");

      try {
        var response = await http.get(
          url,
          headers: {'X-Api-Key': apiKey},
        );

        if (response.statusCode == 200) {
          var jsonResponse =
              convert.jsonDecode(response.body) as Map<String, dynamic>;
          setState(() {
            carDetail = jsonResponse;
            isProcess == false;
          });
          // print('Vehicle Information: $carDetail');
          Get.showSnackbar(GetSnackBar(
            snackPosition: SnackPosition.BOTTOM,
            duration: const Duration(seconds: 1),
            message:
                'Request Successful with status code: ${response.statusCode}.',

            // borderColor: Colors.red,
            backgroundColor: Colors.black.withOpacity(.65),
          ));
        } else {
          Get.showSnackbar(GetSnackBar(
            snackPosition: SnackPosition.BOTTOM,
            duration: const Duration(seconds: 1),
            message: 'Request failed with status code: ${response.statusCode}.',
            // borderColor: Colors.red,
            backgroundColor: Colors.black.withOpacity(.65),
          ));
        }
      } catch (e) {
        print('Error: $e');
      }
    }

    TextEditingController decodeVinController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "Vin Check",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 12,
              ),
              Text(
                "Decode VIN Here",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.red,
                    ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: Get.width * .4,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      controller: decodeVinController,
                      cursorColor: Colors.black12,
                      cursorHeight: .5,
                      cursorWidth: .5,
                      cursorRadius: Radius.zero,
                      decoration: InputDecoration(
                        // isCollapsed: true,
                        // isDense: false,
                        fillColor: Colors.white,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: AppColors.appPrimaryRedCLr,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 3,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),

                  ///
                  /// Go button starts from here
                  ///
                  MySmallButton(
                    titleText: "Go!",
                    onPressed: () {
                      setState(() {
                        isProcess == true;
                      });
                      decodeVinController.text == ''
                          ? ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(seconds: 1),
                                content: Text(
                                  "Please enter the vin number to proceed...",
                                ),
                              ),
                            )
                          : decodeVinController.text.length < 17
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    duration: Duration(seconds: 1),
                                    content: Text(
                                      "Incomplete VIN number ...",
                                    ),
                                  ),
                                )
                              : decodeVin(
                                  vinCode: decodeVinController.text.toString(),
                                );
                      setState(() {
                        isProcess == false;
                      });
                    },
                  ),
                ],
              ),
              isProcess
                  ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: CupertinoActivityIndicator(
                        radius: 30,
                        color: AppColors.appPrimaryRedCLr,
                      ),
                    )
                  : carDetail.isEmpty
                      ? SizedBox(height: Get.height * .3)
                      : Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: carDetail.length,
                            itemBuilder: (context, index) {
                              final key = carDetail.keys.elementAt(index);
                              final value = carDetail[key]
                                  .toString(); // Convert dynamic value to String

                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        key.toUpperCase(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        value,
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                ],
                              );
                            },
                          ),
                        ),
              const AppTagPoweredBy(),
            ],
          ),
        ),
      ),
    );
  }
}
