import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/constants/app_constants.dart';

// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  FocusNode? focusNode;
  bool autoFocus;
  bool showPassword;
  final Color colorText;
  final Color colorHint;
  final double fontSize;
  bool autoCorrect;
  final String? hinText;
  final double radius;
  final Widget? suffixIcon;
  final TextInputType keyBoardType;
  final int? maxLenght;
  final int? maxLine;
  final TextInputAction? textInputAction;

  AppTextField({
    super.key,
    this.controller,
    this.focusNode,
    required this.autoFocus,
    required this.colorText,
    required this.colorHint,
    this.hinText,
    required this.autoCorrect,
    required this.radius,
    required this.fontSize,
    this.suffixIcon,
    this.showPassword = false,
    this.keyBoardType = TextInputType.text,
    this.maxLenght,
    this.maxLine = 1,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      autofocus: autoFocus,
      textAlignVertical: TextAlignVertical.center,
      autocorrect: autoCorrect,
      keyboardType: keyBoardType,
      textInputAction: textInputAction ?? TextInputAction.done,
      obscureText: showPassword,
      maxLength: maxLenght ?? 20,
      maxLines: maxLine,
      style: TextStyle(
        color: colorText,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
        hintText: hinText?.tr,
        suffixIcon: suffixIcon,
        counterText: '',
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.greyECECEC),
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: AppColors.greyECECEC),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
