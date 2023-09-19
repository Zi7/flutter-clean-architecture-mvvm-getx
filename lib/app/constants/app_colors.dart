part of app_constants;

class AppColors {
  static const cardColor = Color(0xFF262837);
  static const schemeSeedColor = Color(0xFF000000);

  static const black2E2E2E = Color(0xFF2E2E2E);
  static const black242B35 = Color(0xFF242B35);

  static const grey5A5A5A = Color(0xFF5A5A5A);
  static const grey737373 = Color(0xFF737373);
  static const grey666666 = Color(0xFF666666);
  static const grey64748B = Color(0xFF64748B);
  static const greyB5B8CB = Color(0xFFB5B8CB);
  static const greyBABABA = Color(0xFFBABABA);
  static const greyECECEC = Color(0xFFECECEC);
  static const greyF8F8FD = Color(0xFFF8F8FD);
  static const greyAA1E2661 = Color(0xAAF8F8FD);
  static const greyF4F7FA = Color(0xFFF4F7FA);

  static const whiteEEEEF4 = Color(0xFFEEEEF4);

  static const green009438 = Color(0xFF009438);
  static const green00993D = Color(0xFF00993D);
  static const green4CD080 = Color(0xFF4CD080);
  static const green00B6C0 = Color(0xFF00B6C0);
  static const greenEBFFF3 = Color(0xFFEBFFF3);
  static const greenE4FCED = Color(0xFFE4FCED);

  static const orangeFFAE58 = Color(0xFFFFAE58);
  static const orangeFFD09D = Color(0xFFFFD09D);

  static const yellowFFE600 = Color(0xFFFFE600);
  static const yellowFFFDE8 = Color(0xFFFFFDE8);
  static const yellowFFF6DA = Color(0xFFFFF6DA);

  static const pinkFBA5C4 = Color(0xFFFBA5C4);

  static const blue6187E8 = Color(0xFF6187E8);
  static const blueB7F3F6 = Color(0xFFB7F3F6);
  static const blueEAFEFF = Color(0xFFEAFEFF);
  static const blueF4F7FA = Color(0xFFF4F7FA);
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex), 'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
