import 'package:flutter/material.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';

import '../app_components/my_app_bar.dart';

List<String> mitsubishiPinCodesList = [
  "Carisma = 2971",
  "Colt <2004 = 1923",
  "Colt >2004 = 6458",
  "2000-05 Eclipse = 6876",
  "2006-12 Eclipse = 1530",
  "Galant station wagon = 5789",
  "Galant sport = 2949",
  "Galant 2000-2003 = 2949",
  "Galant 2004-2012 = 1530",
  "Gt3000 sport = 7958",
  "2012-2014 i-MiEV = 8035",
  "2008-14 Lancer = 8A02",
  "2003-07 Lancer Evo = 7315",
  "2008-14 Lancer Evo = 8A12",
  "2009-14 Lancer Rallyart 4Dr = 8A02",
  "2009-14 Lancer Sport = 8A32",
  "2014 Mirage = 0A11",
  "2001-06 Montero = 5176",
  "2000-04 Montero Sport = 3828",
  "2004-06 Outlander = 7129",
  "2007-13 Outlander = 8A42",
  "2014 Outlander = 004F",
  "2011-14 Outlander Sport = 8A62",
  "2011-14 RVR = 8A62",
  "L200 2007 = 940F",
  "L400 Van = 4838",
  "Outlander = 7129",
  "Pajero old = 6329",
  "Pajero new = 5176",
  "Pajero 2007 = 1803",
  "Pajero sport/magnum = 3828",
  "Sigma / diamonte = 0426",
  "Super lancer station wagon = 1030",
  "Space wagon / challenger = 3209",
  "Space wagon ex = 4753",
  "Space star = 8408",
  "Space gear = 4838",
  "Shogun pinni = 9154"
];

class MitsubishiPinCodesScreen extends StatelessWidget {
  const MitsubishiPinCodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(pageTitle: "Mitsubishi Pin Codes"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: mitsubishiPinCodesList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(top: 12),
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
                      title: Text(mitsubishiPinCodesList[index].toString()),
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
