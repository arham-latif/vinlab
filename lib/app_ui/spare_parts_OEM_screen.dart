import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vinlab_new/app_ui/app_components/app_tag_powered_by.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/generated/assets.dart';
import 'package:vinlab_new/utils/app_colors.dart';

List<SpareLinksDesc> dummyLinksDescs = [
  SpareLinksDesc(
      linkTitle: "BMW",
      linkDesc: "Vehicle Electrical System",
      logoPath: Assets.dummyBrandLogoBMW,
      linkToWeb: "https://bmw.com"),
  SpareLinksDesc(
      linkTitle: "Chrysler",
      linkDesc: "Electrical > Keyless Entry Components",
      logoPath: Assets.dummyBrandLogoChrysler,
      linkToWeb: "https://chrysler.com"),
  SpareLinksDesc(
      linkTitle: "Ford",
      linkDesc:
          "Electronics & Telematics > Electronic Accessories > Keyless Entry Key Fob",
      logoPath: Assets.dummyBrandLogoFord,
      linkToWeb: "https://ford.com"),
  SpareLinksDesc(
      linkTitle: "GM 1",
      linkDesc: "Tires/Accessories > Electronics A/V and Mirrors",
      logoPath: Assets.dummyBrandLogoGm,
      linkToWeb: "https://gm.com"),
  SpareLinksDesc(
      linkTitle: "GM 2",
      linkDesc: "Electrical > Keyless Entry Components",
      logoPath: Assets.dummyBrandLogoGm,
      linkToWeb: "https://gm.com"),
  SpareLinksDesc(
      linkTitle: "Hyundai",
      linkDesc: "Electrical > Keyless Entry Components",
      logoPath: Assets.dummyBrandLogoHyundai,
      linkToWeb: "https://hyundai.com"),
  SpareLinksDesc(
      linkTitle: "Infiniti",
      linkDesc: "Body Electrical > Electrical Unit > Switch Assy-Smart Keyless",
      logoPath: Assets.dummyBrandLogoInfiniti,
      linkToWeb: "https://infiniti.com"),
  SpareLinksDesc(
      linkTitle: "Kia 1",
      linkDesc: "Trim > Key & Cylinder Set",
      logoPath: Assets.dummyBrandLogoKia,
      linkToWeb: "https://kia.com"),
  SpareLinksDesc(
      linkTitle: "Kia 2",
      linkDesc: "Electrical > Keyless Entry Components",
      logoPath: Assets.dummyBrandLogoKia,
      linkToWeb: "https://kia.com"),
  SpareLinksDesc(
      linkTitle: "Mazda",
      linkDesc: "Electrical > Keyless Entry Components > Transmitter",
      logoPath: Assets.dummyBrandLogoMazda,
      linkToWeb: "https://mazda.com"),
  SpareLinksDesc(
      linkTitle: "Mitsubishi",
      linkDesc: "Electrical > Keyless Entry Components > Transmitter",
      logoPath: "assets/dummyBrandLogo/mitsubishi.png",
      linkToWeb: "https://mitsubishi.com"),
  SpareLinksDesc(
      linkTitle: "Subaru",
      linkDesc: "Subaru Genuine Accessories > Exterior",
      logoPath: "assets/dummyBrandLogo/subaru.png",
      linkToWeb: "https://subaru.com"),
  SpareLinksDesc(
      linkTitle: "Nissan",
      linkDesc: "Body Electrical > Electrical Unit Switch Assy-Smart Keyless",
      logoPath: "assets/dummyBrandLogo/nissan.png",
      linkToWeb: "https://nissan.com"),
  SpareLinksDesc(
      linkTitle: "Toyata / Lexas",
      linkDesc: "Body > Lock Cylinder Set",
      logoPath: "assets/dummyBrandLogo/toyota.png",
      linkToWeb: "https://toyota.com"),
  SpareLinksDesc(
      linkTitle: "Lexus 2",
      linkDesc: "Body > Lock Cylinder Set",
      logoPath: "assets/dummyBrandLogo/Lexus.png",
      linkToWeb: "https://lexus.com"),
  SpareLinksDesc(
      linkTitle: "Toyota 2",
      linkDesc: "Body > Lock Cylinder Set",
      logoPath: "assets/dummyBrandLogo/toyota.png",
      linkToWeb: "https://toyota.com"),
  SpareLinksDesc(
      linkTitle: "Volkswagen 1",
      linkDesc: "Electrical > Keyless Entry Components",
      logoPath: "assets/dummyBrandLogo/volskogen.png",
      linkToWeb: "https://volkswagen.com"),
  SpareLinksDesc(
      linkTitle: "Volkswagen 2",
      linkDesc: "Accessories > Accessories & many more",
      logoPath: "assets/dummyBrandLogo/volskogen.png",
      linkToWeb: "https://volkswagen.com"),
];

class SpareLinksDesc {
  final String linkTitle;
  final String linkDesc;
  final String linkToWeb;
  final String logoPath;

  SpareLinksDesc(
      {required this.logoPath,
      required this.linkToWeb,
      required this.linkTitle,
      required this.linkDesc});
}

class SparePartsByOEMScreen extends StatelessWidget {
  const SparePartsByOEMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: const MyAppBar(
        pageTitle: "Spare Parts By OEM",
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Column(
            children: [
              const SizedBox(
                height: 22,
              ),

              ///
              /// SpareLinksDescriptions list builder starts from here
              ///
              ListView.builder(
                itemCount: dummyLinksDescs.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () => _launchURL(
                          linkPath: dummyLinksDescs[index].linkToWeb,
                        ),
                        //_launchInWebViewOrVC(Uri(path: "https://pub.dev/packages/url_launcher/example")),
                        tileColor: AppColors.appPrimaryRedCLr.withOpacity(.1),
                        leading: SizedBox(
                          height: 100,
                          width: 60,
                          // color: Colors.blue,
                          // margin: const EdgeInsets.only(bottom: 6),
                          child: Image.asset(
                            dummyLinksDescs[index].logoPath,
                            fit: BoxFit.fill,
                          ),
                        ),
                        title: Text(
                          dummyLinksDescs[index].linkTitle,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        subtitle: Text(
                          dummyLinksDescs[index].linkDesc,
                        ),
                      ),
                      const Divider()
                    ],
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

class SpareLinkText extends StatelessWidget {
  const SpareLinkText(
      {super.key,
      required this.linkTitle,
      required this.linkOnTap,
      required this.descText});

  final String linkTitle;
  final Function() linkOnTap;
  final String descText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "•  ",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Expanded(
            child: Text.rich(
              TextSpan(
                text: "$linkTitle ",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()..onTap = linkOnTap,
                children: <TextSpan>[
                  TextSpan(
                    text: " ($descText)",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchInWebViewOrVC(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(
        headers: <String, String>{'my_header_key': 'my_header_value'}),
  )) {
    throw Exception('Could not launch $url');
  }
}

_launchURL({required String linkPath}) async {
  // String url = linkPath;
  if (kDebugMode) {
    print(linkPath);
  }
  if (await canLaunchUrl(Uri.parse(linkPath))) {
    await launchUrl(Uri.parse(linkPath));
  } else {
    throw 'Could not launch $linkPath';
  }
}
