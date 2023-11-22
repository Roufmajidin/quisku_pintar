part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.emailChange(String email) = EmailChanged;
  const factory LoginEvent.passwordChange(String password) = PasswordChanged;
  const factory LoginEvent.submit() = LoginSubmit;
  const factory LoginEvent.hidePassword() = HiddenPassword;
}
