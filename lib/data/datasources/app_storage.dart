import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorage extends GetxService {
  static final AppStorage _appStorage = AppStorage._internal();

  factory AppStorage() {
    return _appStorage;
  }
  AppStorage._internal();

  Future<SharedPreferences> sharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  setString(String key, String value) {
    SharedPreferences pref = Get.find();
    pref.setString(key, value);
  }

  String? getString(String key) {
    SharedPreferences pref = Get.find();
    return pref.getString(key);
  }

  setInt(String key, int value) {
    SharedPreferences pref = Get.find();
    pref.setInt(key, value);
  }

  int? getInt(String key) {
    SharedPreferences pref = Get.find();
    return pref.getInt(key);
  }

  setListString(String key, List<String> value) {
    SharedPreferences pref = Get.find();
    pref.setStringList(key, value);
  }

  List<String>? getListString(String key) {
    SharedPreferences pref = Get.find();
    return pref.getStringList(key);
  }

  removeString(String key) {
    SharedPreferences pref = Get.find();
    pref.remove(key);
  }
}

class SKeys {
  static const token = 'token';
  static const account = 'account';
  static const countOtp = 'countOtp';
  static const timeStart = 'time';
}
