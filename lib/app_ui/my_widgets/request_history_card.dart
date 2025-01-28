import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestHistoryCard extends StatelessWidget {
  const RequestHistoryCard({
    Key? key,
    required this.date,
    required this.time,
    required this.type,
    required this.input,
    required this.resultKey,
    required this.resultNewPin,
    required this.resultOldPin,
  }) : super(key: key);

  final String date;
  final String time;
  final String type;
  final String input;
  final String resultKey;
  final String resultNewPin;
  final String resultOldPin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), border: Border.all()),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Colors.orangeAccent,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text("$date $time"),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black,
                thickness: 1,
              ),
              Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: const BoxDecoration(
                  color: Colors.lightGreen,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text("Type: $type"),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black,
                thickness: 1,
              ),
              Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text("Input: $input"),
                ),
              ),
              const Divider(
                height: 0,
                color: Colors.black,
                thickness: 1,
              ),
              Container(
                padding: const EdgeInsets.only(left: 8),
                decoration: const BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Result: ",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: Get.width * .2,
                                  child: const Text(
                                    "Key:",
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * .5,
                                  child: Text(
                                    resultKey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: Get.width * .2,
                                  child: const Text(
                                    "New Pin:",
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * .5,
                                  child: Text(
                                    resultNewPin,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: Get.width * .2,
                                  child: const Text(
                                    "Old Pin:",
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * .5,
                                  child: Text(
                                    resultOldPin,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
