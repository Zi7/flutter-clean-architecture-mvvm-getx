import 'dart:async';

import 'package:get/get_connect/http/src/request/request.dart';

import '../../../app/constants/app_constants.dart';
import '../../datasources/app_storage.dart';

FutureOr<Request> requestInterceptor(request) async {
  String? token = AppStorage().getString(SKeys.token);
  if (token != null && token.isNotEmpty) {
    request.headers['Authorization'] = 'Bearer $token';
  }
  request.headers['AppId'] = '${AppStrings.appId}';
  return request;
}
