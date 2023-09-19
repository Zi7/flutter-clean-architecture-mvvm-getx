import 'package:intl/intl.dart';

class TimeUtil {
  static formatTime({required int time}) {
    int sec = time % 60;
    int min = (time / 60).floor();
    String minute = min.toString().length <= 1 ? "0$min" : "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    return " $minute:$second";
  }

  static secondsToDate(int time) {
    var date = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    return DateFormat('HH:mm - dd/MM/yyyy').format(date); // 31/12/2000, 22:00
  }
}
