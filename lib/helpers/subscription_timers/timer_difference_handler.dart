class TimerDifferenceHandler {
  static late DateTime endingTime;

  static final TimerDifferenceHandler _instance = TimerDifferenceHandler();

  static TimerDifferenceHandler get instance => _instance;

  int get remainingSeconds {
    final DateTime dateTimeNow = DateTime.now();
    Duration remainingTime = endingTime.difference(dateTimeNow);
    // Return in seconds
    print(
        "TimerDifferenceHandler  -remaining second = ${remainingTime.inSeconds}");
    return remainingTime.inSeconds;
  }

  void setEndingTime(int durationToEnd) {
    final DateTime dateTimeNow = DateTime.now();
    // Ending time is the current time plus the remaining duration.
    endingTime = dateTimeNow.add(
      Duration(
        seconds: durationToEnd,
      ),
    );
    print(
        "TimerDifferenceHandler  -setEndingTime = ${endingTime.toLocal().toString()}");
  }
}
