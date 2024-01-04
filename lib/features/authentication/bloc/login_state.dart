part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    required FormzStatus status,
    required Email email,
    required Password password,
    required String errorMessages,
    required bool hidePassword,
    @Default(FetchStatus.initial) FetchStatus onLogoutProses,
    User? user,
  }) = _Initial;
}
