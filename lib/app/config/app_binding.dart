import 'package:get/get.dart';

import '../../data/datasources/app_database.dart';
import '../../di.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(AppDatabase());
    await DenpendencyInjection.init();
  }
}
