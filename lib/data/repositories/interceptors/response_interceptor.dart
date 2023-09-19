import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../../../../app/utils/log.dart';

FutureOr<dynamic> responseInterceptor(Request request, Response response) async {
  Log.i('url: ${request.url.toString()}');
  Log.i('response body: ${response.body.toString()}');
  // if (response.statusCode != 200) {
  //   handleErrorStatus(response);
  //   return;
  // }

  return response;
}

void handleErrorStatus(Response response) {
  switch (response.statusCode) {
    case 400:
      // final message = ErrorResponse.fromJson(response.body);
      // CommonWidget.toast(message.error);
      break;
    default:
  }

  return;
}
