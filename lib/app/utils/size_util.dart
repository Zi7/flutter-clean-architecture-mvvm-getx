import 'dart:ui';

import 'package:flutter/material.dart';

class SizeUtil {
  /// This method is used to set padding/margin (for the left and Right side)
  /// and width of the screen or widget according to the Viewport width.
  static double _getHorizontalSize(FlutterView window, double px) {
    Size size = window.physicalSize / window.devicePixelRatio;
    return px * (size.width / 375);
  }

  /// This method is used to set padding/margin (for the top and bottom side)
  /// and height of the screen or widget according to the Viewport height.
  static double _getVerticalSize(FlutterView window, double px) {
    Size size = window.physicalSize / window.devicePixelRatio;
    num statusBar = MediaQueryData.fromView(window).viewPadding.top;
    num screenHeight = size.height - statusBar;
    return px * (screenHeight / 812);
  }

  /// This method is used to set smallest px in image height and width.
  static double getSize(FlutterView window, double px) {
    final height = _getVerticalSize(window, px);
    final width = _getHorizontalSize(window, px);

    if (height < width) {
      return height.toInt().toDouble();
    } else {
      return width.toInt().toDouble();
    }
  }
}
