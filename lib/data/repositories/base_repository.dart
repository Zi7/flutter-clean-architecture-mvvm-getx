import 'package:get/get.dart';

import '../../../app/constants/app_constants.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/request_interceptor.dart';
import 'interceptors/response_interceptor.dart';

class BaseRepository extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = AppStrings.baseUrl;
    httpClient.addAuthenticator(authInterceptor);
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
