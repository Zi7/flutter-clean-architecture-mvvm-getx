import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class AppTheme {
  // Light theme
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorSchemeSeed: AppColors.schemeSeedColor,
  );

  // Dark theme
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorSchemeSeed: AppColors.schemeSeedColor,
  );
}
