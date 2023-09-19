import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../app/constants/app_constants.dart';
import '../../widgets/app_auth_background.dart';
import '../../widgets/app_text_field.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppAuthBackground(
        btnBack: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 65),
            Text('login'.tr, style: AppTextStyle.s30w600c2E2E2E),
            const Spacer(flex: 20),
            Text('phone_number'.tr, style: AppTextStyle.s16w400c5A5A5A),
            const Spacer(flex: 10),
            _inputPhoneNumber(context),
            const Spacer(flex: 20),
            Text('password'.tr, style: AppTextStyle.s16w400c5A5A5A),
            const Spacer(flex: 10),
            _inputPassword(context),
            const Spacer(flex: 10),
            _forgotPassword(),
            const Spacer(flex: 65),
            _btnLogin(context),
            const Spacer(flex: 10),
            _accountQuestion(),
          ],
        ),
      ),
    );
  }

  _inputPhoneNumber(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 42,
      child: AppTextField(
        controller: controller.userController,
        textInputAction: TextInputAction.next,
        maxLenght: 10,
        autoFocus: false,
        keyBoardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
        colorText: Colors.black,
        colorHint: AppColors.grey737373,
        autoCorrect: true,
        radius: 8,
        fontSize: 15,
      ),
    );
  }

  _inputPassword(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 42,
      child: AppTextField(
        autoFocus: false,
        colorText: Colors.black,
        controller: controller.passwordController,
        colorHint: AppColors.grey737373,
        autoCorrect: true,
        radius: 8,
        fontSize: 15,
        keyBoardType: TextInputType.text,
        showPassword: controller.hidePassword.value == true,
        suffixIcon: InkWell(
          onTap: () {
            controller.showHidePassword();
          },
          child: Container(
            height: 20,
            width: 20,
            margin: const EdgeInsets.fromLTRB(13, 11, 13, 11),
            child: SvgPicture.asset(
              controller.hidePassword.value == true ? SvgPath.svgShowPassword : SvgPath.svgHidePassword,
            ),
          ),
        ),
      ),
    );
  }

  _forgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () => controller.toForgotPassword(),
        child: Text('forgot_password'.tr, style: AppTextStyle.s12w400c666666),
      ),
    );
  }

  _btnLogin(context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        onPressed: () {
          controller.login();
          FocusScope.of(context).unfocus();
        },
        style: TextButton.styleFrom(
          backgroundColor: AppColors.orangeFFAE58,
        ),
        child: Center(
          child: Text(
            'login'.tr.toUpperCase(),
            style: AppTextStyle.s17w700cWhitefBold,
          ),
        ),
      ),
    );
  }

  _accountQuestion() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'login_question_account'.tr,
            style: AppTextStyle.s15w500c2E2E2EfBold,
          ),
          TextButton(
            onPressed: () {
              controller.toRegister();
            },
            style: TextButton.styleFrom(backgroundColor: Colors.white, padding: EdgeInsets.zero),
            child: Text('register_now'.tr, style: AppTextStyle.s15w500c00B6C0fBold),
          )
        ],
      ),
    );
  }
}
