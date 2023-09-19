import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/app/utils/toast_util.dart';
import '../../../../app/utils/log.dart';
import '../../../../app/utils/validator_util.dart';
import '../../../data/models/request/login_request.dart';
import '../../../data/repositories/login_repository.dart';

class LoginController extends GetxController {
  LoginController(this._repo);

  final LoginRepository _repo;
  var userController = TextEditingController();
  var passwordController = TextEditingController();
  var hidePassword = Rxn(true);
  String userName = '';

  showHidePassword() {
    hidePassword.toggle();
  }

  login() async {
    Log.i('Click Login ${userController.text}/${passwordController.text}');
    if (userController.text.isEmpty || passwordController.text.isEmpty) {
      ToastUtil.show('not_blank'.tr);
      return;
    }
    if (!ValidatorUlti.isPhoneNumber(userController.text)) {
      ToastUtil.show('phone_number_invalid'.tr);
      return;
    }
    int platform = 4; // web
    if (Platform.isAndroid) {
      platform = 2;
    } else if (Platform.isIOS) {
      platform = 1;
    }
    final res = await _repo.login(LoginRequest(userName: userController.text, password: passwordController.text, platform: platform));
    Log.i(res.message);
    if (res.code == 0) {
      // Get.offNamedUntil(Routes.home, (route) => false);
      ToastUtil.show(res.message);
    } else {
      ToastUtil.show(res.message);
    }
  }

  toRegister() {
    // Get.toNamed(Routes.register);
  }

  toForgotPassword() {
    // Get.toNamed(Routes.forgotPassword);
  }
}
