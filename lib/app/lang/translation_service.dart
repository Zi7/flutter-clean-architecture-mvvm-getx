import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en.dart';
import 'vi.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('vi', 'VN');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'vi_VN': vi,
      };
}
