class AppData {
  static final AppData _appData = AppData._internal();

  factory AppData() {
    return _appData;
  }
  AppData._internal();
}
