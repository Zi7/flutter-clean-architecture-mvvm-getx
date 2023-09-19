/// use this mixin for all form field
mixin ValidatorUlti {
  static bool isEmail(String email) {
    RegExp regExp = RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }

  static bool isPhoneNumber(String phoneNo) {
    final regExp = RegExp(r'(^(?:[+0]9)?0[0-9]{9}$)');
    return regExp.hasMatch(phoneNo);
  }

  // example :
  // String? validateTextFieldIsRequired(String? value) {
  //   if (value == null || value.trim().isEmpty) return "this field is required";
  //   return null;
  // }

  // String? validateDropdownIsRequired(String? value) {
  //   if (value == null || value.trim().isEmpty) return "please select item";
  //   return null;
  // }
}
