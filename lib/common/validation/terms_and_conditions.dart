import 'package:formz/formz.dart';

enum TnCValidationError { invalid }

class TnC extends FormzInput<bool, TnCValidationError> {
  const TnC.pure() : super.pure(false);
  const TnC.dirty([super.value = false]) : super.dirty();

  @override
  TnCValidationError? validator(bool value) {
    return value ? null : TnCValidationError.invalid;
  }
}
