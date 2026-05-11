
class Validators {
  static String? validateEmail(String value) {
    if (value.isEmpty) return 'Email is required';

    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value)) return 'Invalid email';
    return null;
  }

  static String? validatePassword(String value) {
    if (value.length < 6) {
      return 'Minimum 6 characters required';
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'At least 1 uppercase letter required';
    }

    if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'At least 1 special character required';
    }

    return null;
  }

  static String? validateEmpty(String value, String field) {
    if (value.isEmpty) return '$field is required';
    return null;
  }
}
