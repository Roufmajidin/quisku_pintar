import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/common/validation/email.dart';
import 'package:quisku_pintar/common/validation/password.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUsesCase;
  LoginBloc(this.loginUsesCase)
      : super(const LoginState.initial(
            status: FormzStatus.pure,
            email: Email.pure(),
            password: Password.pure(),
            errorMessages: '',
            hidePassword: true)) {
    on<EmailChanged>(_emailChange);
    on<PasswordChanged>(_passwordChange);
    on<HiddenPassword>(_hidePassword);
    on<LoginSubmit>(_loginSubmit);
  }
  void _loginSubmit(LoginSubmit event, Emitter<LoginState> emit) async {
    print("bloc aman");

    if (state.status.isValidated) {
      log('sdsd');
      emit(state.copyWith(status: FormzStatus.submissionInProgress));

      final res = await loginUsesCase.loginUseCase(
          state.email.value, state.password.value);
      log(res.toString());

      res.fold(
          (failure) =>
              emit(state.copyWith(status: FormzStatus.submissionFailure)),
          (user) =>
              emit(state.copyWith(status: FormzStatus.submissionSuccess)));
    }
  }

  void _emailChange(EmailChanged event, Emitter<LoginState> emit) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([state.password, email]),
      ),
    );
    log('email ${state.status.toString()}');
  }

  void _passwordChange(PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
        password: password, status: Formz.validate([password, state.email])));
    log('password ${state.status.toString()}');
  }

  void _hidePassword(HiddenPassword event, Emitter<LoginState> emit) {
    emit(state.copyWith(hidePassword: !state.hidePassword));
  }
}
