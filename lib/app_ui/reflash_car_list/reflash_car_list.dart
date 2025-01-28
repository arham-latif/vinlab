import 'package:flutter/material.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';

List<String> reflashCarList = [
  "Mazda mpv",
  "Toyota Prius 01-03 (reflash)",
  "Toyota Sequoia 03-07 (reflash)",
  "Toyota Sienna 98-03 (reflash) (optional transponder)",
  "Toyota solara 99-01 (reflash) (optional transponder)",
  "Toyota solara 02-03 (reflash for V6 Cyl engine)",
  "Toyota 4Runner 99-00 (reflash) (optional transponder)",
  "Toyota Avalon 98-04 (reflash) (optional transponder)",
  "Toyota Camry 98-01 (reflash) (optional transponder)",
  "Toyota Highlander 01-03 (reflash for V6 Cyl engine)",
  "Toyota MR2 00-05 (reflash)",
  "Lexus is300 01 (reflash)",
  "Lexus LS400 97-00 (reflash)",
  "Lexus LX470 99-00 (reflash)",
  "Lexus ES300 98-01 (reflash)",
  "Lexus GS300 98-01 (reflash)",
  "Lexus GS400 98-00 (reflash)",
  "Lexus RX300 99-03 (reflash)",
  "Lexus SC300/SC400 98-00 (reflash)",
  "Honda prelude 98-2002 (reflash)",
  "Acura NSX 97-05 (reflash)",
  "Acura RL 96-04 (reflash)",
];

class ReflashCarListScreen extends StatelessWidget {
  const ReflashCarListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(pageTitle: 'Reflash Car List'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: reflashCarList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(top: 12),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.grey.shade400,
                      ),
                      title: Text(reflashCarList[index].toString()),
                      tileColor: Colors.grey.shade100,
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
