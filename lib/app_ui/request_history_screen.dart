import 'package:flutter/material.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/app_ui/my_widgets/request_history_card.dart';

class RequestHistoryScreen extends StatelessWidget {
  const RequestHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "Request History",
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

              ///
              /// History card list builder starts from here
              ///
              ListView.builder(
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const RequestHistoryCard(
                    date: "03/01/2023",
                    time: "03:32:33",
                    type: "Kia - VIN -> KEY",
                    input: "5XYKWDA23CG285578",
                    resultKey: "G1478",
                    resultNewPin: "307320",
                    resultOldPin: "None",
                  );
                },
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
      ),
    );
  }
}
