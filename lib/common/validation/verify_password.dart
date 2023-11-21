import 'package:formz/formz.dart';

class ConfirmPassword extends FormzInput<String, String?> {
  const ConfirmPassword.pure(this.password) : super.pure('');
  const ConfirmPassword.dirty(this.password, [super.value = ''])
      : super.dirty();

  final String? password;

  @override
  String? validator(String value) {
    if (value.isEmpty || value != password) return 'Passwords are not same';

    return null;
  }
}
