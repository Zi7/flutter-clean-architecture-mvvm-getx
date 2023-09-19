import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../app/constants/app_constants.dart';

// ignore: must_be_immutable
class AppAuthBackground extends StatelessWidget {
  final Widget? child;
  bool btnBack;

  AppAuthBackground({
    Key? key,
    this.child,
    required this.btnBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const Image(
            fit: BoxFit.fill,
            image: AssetImage(ImagePath.imgBgHnd),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // const SizedBox(height: 82.51),
                  const Spacer(flex: 82),
                  Center(
                    child: SizedBox(
                      width: 112.14,
                      height: 112.14,
                      child: SvgPicture.asset(SvgPath.svgLogoHnd),
                    ),
                  ),
                  // const SizedBox(height: 16),
                  const Spacer(flex: 16),
                  Text('hnd'.tr, style: AppTextStyle.s23w500cWhite),
                  Text('vn'.tr, style: AppTextStyle.s25w800cWhitefBold),
                  // const SizedBox(height: 50),
                  const Spacer(flex: 50),
                  Expanded(
                    flex: 490,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.fromLTRB(33, 0, 33, 33),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                      ),
                      child: child,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: btnBack,
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.fromLTRB(24, 51, 0, 0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(SvgPath.svgBack),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
