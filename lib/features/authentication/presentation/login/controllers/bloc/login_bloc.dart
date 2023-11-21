import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../common/validation/email.dart';
import '../../../../../../common/validation/password.dart';
import '../../../../../../core/utils/enums.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<ShowPassword>(_onShowPassword);
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
  }

  void _onShowPassword(
    ShowPassword event,
    Emitter<LoginState> emit,
  ) =>
      emit(state.copyWith(hidePassword: !state.hidePassword));

  void _onEmailChanged(
    EmailChanged event,
    Emitter<LoginState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(
      email: email,
      isValid: Formz.validate([
        email,
        state.password,
      ]),
    ));
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      password: password,
      isValid: Formz.validate([
        password,
        state.email,
      ]),
    ));
  }

  
}
