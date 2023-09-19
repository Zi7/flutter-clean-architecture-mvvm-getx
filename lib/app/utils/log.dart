import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/foundation.dart';

class Log {
  static void d(String message) {
    if (kDebugMode) {
      AnsiPen pen = AnsiPen()..blue();
      print(pen('TCCTXH-LOG: $message'));
    }
  }

  static void i(String message) {
    if (kDebugMode) {
      AnsiPen pen = AnsiPen()..green();
      print(pen('TCCTXH-LOG: $message'));
    }
  }

  static void w(String message) {
    if (kDebugMode) {
      AnsiPen pen = AnsiPen()..yellow();
      print(pen('TCCTXH-LOG: $message'));
    }
  }

  static void e(String message) {
    if (kDebugMode) {
      AnsiPen pen = AnsiPen()..red();
      print(pen('TCCTXH-LOG: $message'));
    }
  }
}
