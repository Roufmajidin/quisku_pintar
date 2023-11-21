import 'package:formz/formz.dart';

enum PasswordValidationError { invalid }

class Password extends FormzInput<String, String> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  // static final RegExp _passwordRegExp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  @override
  String? validator(String value) {
    if (value.isEmpty) return 'Password must not be empty';
    // if (!_passwordRegExp.hasMatch(value)) return 'Invalid password';

    return null;
  }
}
