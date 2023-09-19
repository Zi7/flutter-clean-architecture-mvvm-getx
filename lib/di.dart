import 'package:get/get.dart';

import 'data/datasources/app_storage.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => AppStorage().sharedPreferences());
  }
}
