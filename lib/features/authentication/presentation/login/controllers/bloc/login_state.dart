part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(true) bool hidePassword,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus loginStatus,
    @Default(Status.initial) Status loginGoogleStatus,
    @Default(Status.initial) Status requestEmailVerificationStatus,
    @Default('') String message,
    @Default(false) bool isValid,
  }) = _LoginState;
}
