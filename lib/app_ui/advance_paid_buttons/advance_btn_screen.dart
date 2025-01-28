import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/advanceCustomBtn.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/advance_data_show_screen.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/button_model.dart';
import 'package:vinlab_new/app_ui/advance_paid_buttons/mercedes_benz_chart_screen.dart';
import 'package:vinlab_new/app_ui/app_components/my_app_bar.dart';
import 'package:vinlab_new/app_ui/login_screen.dart';
import 'package:vinlab_new/utils/app_colors.dart';

import '../app_components/app_tag_powered_by.dart';
import '../group_chat/chat_home_screen.dart';
import '../trail_timer_helper.dart';

class AdvanceBtnScreen extends StatelessWidget {
  const AdvanceBtnScreen({super.key, required this.isSubscribed});

  final bool isSubscribed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        pageTitle: 'Advanced Key Programs',
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => const ChatHomeScreen());
        },
        extendedPadding: const EdgeInsets.only(left: 16, right: 5),
        foregroundColor: Colors.white,
        backgroundColor: AppColors.appPrimaryRedCLr,
        tooltip: "Different Chats and Discussion can be accessed from here...",
        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Chat &",
                    style: GoogleFonts.bodoniModa(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600)),
                Text("Discussions",
                    style: GoogleFonts.bodoniModa(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(Icons.arrow_forward_ios_outlined),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 10),

                ///trail timer here...
                !isSubscribed
                    ? Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: const TrailTimerHelper(
                          trailName: "advance_trail_start_time",
                        ),
                      )
                    : Container(),
                const SizedBox(height: 20),
                const Divider(),

                ///
                /// AudiQ2014 Button starts from here
                ///
                Text(
                  "Audi Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),

                const Divider(),
                AdvanceButton(
                    name: audiA42010.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: audiA42010,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),
                AdvanceButton(
                    name: audiQ2014.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: audiQ2014,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),
                AdvanceButton(
                    name: audiQ52016.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: audiQ52016,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// BMW525 Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "BMW Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: bmw525KeyProgram.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: bmw525KeyProgram,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// BMW528i2014 Button starts from here
                ///
                AdvanceButton(
                  name: bmw528i2014.btnName,
                  onTap: () {
                    myPageRouteTransition(
                      context: context,
                      pageRouteName: AdvanceDataShowScreen(
                        programData: bmw528i2014,
                      ),
                      soundPath: "audio/screenTransition5.mp3",
                    );
                  },
                ),

                ///
                /// bmw328i2017 Button starts from here
                ///
                AdvanceButton(
                  name: bmw328i2017.btnName,
                  onTap: () {
                    myPageRouteTransition(
                      context: context,
                      pageRouteName: AdvanceDataShowScreen(
                        programData: bmw328i2017,
                      ),
                      soundPath: "audio/screenTransition5.mp3",
                    );
                  },
                ),

                ///
                /// BMW740KeyProgram Button starts from here
                ///
                AdvanceButton(
                    name: bmw740KeyProgram2013.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: bmw740KeyProgram2013,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// bmwReadISN_N55 Button starts from here
                ///
                AdvanceButton(
                    name: bmwReadISN_N55.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: bmwReadISN_N55,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// readisnN20 Button starts from here
                ///
                AdvanceButton(
                    name: readisnN20.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: readisnN20,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// chryslerCrossfireKeyProgram Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Chrysler Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: chryslerCrossfireKeyProgram.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: chryslerCrossfireKeyProgram,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// mercedesC2502014 Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Mercedes Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: mercedesC2502014.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: mercedesC2502014,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// mercedesCLK2502007 Button starts from here
                ///
                AdvanceButton(
                    name: mercedesCLK2502007.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: mercedesCLK2502007,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// mercedesSprinter2018 Button starts from here
                ///
                AdvanceButton(
                    name: mercedesSprinter2018.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: mercedesSprinter2018,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// mercedesCLK4302004 Button starts from here
                ///
                AdvanceButton(
                    name: mercedesCLK4302004.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: mercedesCLK4302004,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// porscheKeyProgram Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Porsche's Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: porscheKeyProgram.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: porscheKeyProgram,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// porscheCayenne2008 Button starts from here
                ///
                AdvanceButton(
                    name: porscheCayenne2008.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: porscheCayenne2008,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// rangeRover2007 Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Range Rover Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: rangeRover2007.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: rangeRover2007,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// rangeRoverSport2014 Button starts from here
                ///
                AdvanceButton(
                    name: rangeRoverSport2014.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: rangeRoverSport2014,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// Land rover 2018 Button starts from here
                ///
                AdvanceButton(
                    name: landRoverKeyProgram.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: landRoverKeyProgram,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// saabKeyProgram Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Saab's Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: saabKeyProgram.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: saabKeyProgram,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// jaguar key program Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Jaguar Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),

                ///
                /// jaguarXF2016 Button starts from here
                ///
                AdvanceButton(
                    name: jaguarXF2016.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: jaguarXF2016,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// jaguarFpace2017 Button starts from here
                ///
                AdvanceButton(
                    name: jaguarFpace2017.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: jaguarFpace2017,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// vwJetta2002 Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "VW Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: vwJetta2002.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: vwJetta2002,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// vwJetta2010 Button starts from here
                ///
                AdvanceButton(
                    name: vwJetta2010.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: vwJetta2010,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// jetta2013AllKeyLost Button starts from here
                ///
                AdvanceButton(
                    name: jetta2013AllKeyLost.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: jetta2013AllKeyLost,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// vwJetta2002 Button starts from here
                ///
                AdvanceButton(
                    name: vwcc2013.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: vwcc2013,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Volvo Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: volvoXC602016.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: volvoXC602016,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// maseratiKeyProgram Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Maserati Key Program List",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                AdvanceButton(
                    name: maseratiGhibli2019.btnName,
                    onTap: () {
                      myPageRouteTransition(
                        context: context,
                        pageRouteName: AdvanceDataShowScreen(
                          programData: maseratiGhibli2019,
                        ),
                        soundPath: "audio/screenTransition5.mp3",
                      );
                    }),

                ///
                /// MercedesBenzChassisChartModel Button starts from here
                ///
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Mercedes Benz Chassis Chart",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green.shade300,
                        ),
                        onPressed: () {
                          Get.to(const MercedesBenzChassisChart());
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mercedes Benz Chart"),
                            Icon(Icons.forward),
                          ],
                        ))),

                const SizedBox(
                  height: 30,
                ),
                const AppTagPoweredBy(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )),
    );
  }
}
