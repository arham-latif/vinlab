import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vinlab_new/app_ui/home_screen.dart';
import 'package:vinlab_new/utils/app_colors.dart';

import '../helpers/subscription_timers/trail_version_manager.dart';

class TrailTimerHelper extends StatefulWidget {
  const TrailTimerHelper({super.key, required this.trailName});

  final String trailName;

  @override
  State<TrailTimerHelper> createState() => _TrailTimerHelperState();
}

class _TrailTimerHelperState extends State<TrailTimerHelper> {
  int remainingTime = 0; //86400; // Remaining time in seconds
  Timer? _timer;
  bool? _isTrailEnd = true;
  final TrialVersionManagerController _trialVersionManagerController =
      Get.find();

  @override
  void initState() {
    super.initState();
    _isTrailEnded();
    _startCountdown(widget.trailName.contains("basic") ? "basic" : "advance");
  }

  Future<void> _isTrailEnded() async {
    _isTrailEnd = await _trialVersionManagerController.isTrialEnded(
      trailName: widget.trailName,
    );
  }

  // Start the countdown
  Future<void> _startCountdown(String trialName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString("user")!);
    String trial = trialName;
    DateTime currentTime = DateTime.now();
    DateTime expireTime = DateTime.parse(user["${trial}TrialExpireTime"]);
    // final isActive = currentTime.isAfter(expireTime) ? false : true;
    // final isExpired = !currentTime.isAfter(expireTime)
    //     ? false
    //     : expireTime.year == 2023
    //         ? false
    //         : true;

    final isActive = await _trialVersionManagerController.isTrialActive(
      trailName: widget.trailName,
    );

    if (isActive) {
      remainingTime = await _trialVersionManagerController.getRemainingTime(
        trailName: widget.trailName,
      );
      _startTimer();
    } else {
      setState(() {
        remainingTime = 0; // Trial has expired
      });
    }
  }

  // Start the periodic timer that decrements every second
  void _startTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (remainingTime > 0) {
          remainingTime--;
        } else {
          _timer!.cancel();
          // Handle trial expiration logic here
          Get.to(const HomeScreen());
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "Your free trial expired, please subscribe now...",
              ),
            ),
          );
        }
      });
    });
  }

  // Convert remainingTime (seconds) to hours, minutes, and seconds
  String _formatTime(int totalSeconds) {
    final int hours = totalSeconds ~/ 3600;
    final int minutes = (totalSeconds % 3600) ~/ 60;
    final int seconds = totalSeconds % 60;

    // Format the time as HH:MM:SS
    final String hoursStr = hours.toString().padLeft(2, '0');
    final String minutesStr = minutes.toString().padLeft(2, '0');
    final String secondsStr = seconds.toString().padLeft(2, '0');

    return "$hoursStr:$minutesStr:$secondsStr";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.appPrimaryRedCLr.withOpacity(.1),
          border: Border.all(),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.elliptical(42, 70),
            bottomLeft: Radius.elliptical(42, 70),
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: _isTrailEnd!
            ? Text(
                "Your Free trail version ended...",
                style: GoogleFonts.alegreyaSc(
                  fontSize: Theme.of(context).textTheme.headlineSmall!.fontSize,
                ),
                textAlign: TextAlign.center,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Free Trail Remaining Time:",
                    style: GoogleFonts.alegreyaSc(
                      fontSize:
                          Theme.of(context).textTheme.headlineSmall!.fontSize,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    _formatTime(remainingTime),
                    style: GoogleFonts.alegreyaSc(
                      fontSize:
                          Theme.of(context).textTheme.headlineSmall!.fontSize,
                      color: AppColors.appPrimaryRedCLr,
                      letterSpacing: 3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
      ),
    );
  }
}
