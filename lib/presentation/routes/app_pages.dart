import 'package:get/get.dart';

import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}
