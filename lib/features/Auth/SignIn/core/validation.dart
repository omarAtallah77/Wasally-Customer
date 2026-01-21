class Validation {
  static String? validate(String? value, String inputType) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (inputType == "email") {
      return validateEmail(value);
    } else if (inputType == "password") {
      return validatePassword(value);
    }
  }

  static String? validateEmail(String value) {
    if (!value.contains("@") || !value.contains(".")) {
      return "Enter a valid email";
    }
  }

  static String? validatePassword(String value) {
    if (value.length < 6) return "Password must be at least 6 chars";
    return null;
  }
}
