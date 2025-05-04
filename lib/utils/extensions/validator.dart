class Validator {
  Validator._();

  static String? validateEmptyField(String fieldName, String? value) {
    if (value == null || value.isEmpty || value.length < 5) {
      return "Enter at least 7 characters";
    }
    return null;
  }

  static String? validateEmailField(String fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return fieldName;
    }

    final emailRegExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    }

    return null;
  }

  static String? validatePasswordField(String fieldName, String? value) {
    final passwordRegExp =
        RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{9,}$');

    if (value == null || value.isEmpty) {
      return fieldName;
    }

    if (!passwordRegExp.hasMatch(value)) {
      return "Password must contain at least 9 characters (letters/numbers)";
    }

    return null;
  }
}
