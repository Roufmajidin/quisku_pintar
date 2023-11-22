import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/common/validation/email.dart';
import 'package:quisku_pintar/common/validation/password.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginState.initial(
            status: FormzStatus.pure,
            email: Email.pure(),
            password: Password.pure(),
            errorMessages: '',
            hidePassword: true)) {
    on<EmailChanged>(_emailChange);
    on<PasswordChanged>(_passwordChange);
    on<HiddenPassword>(_hidePassword);
  }
  void _emailChange(EmailChanged event, Emitter<LoginState> emit) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([state.email]),
      ),
    );
  }

  void _passwordChange(PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
        password: password,
        status: Formz.validate([password, state.password])));
  }

  void _hidePassword(HiddenPassword event, Emitter<LoginState> emit) {
    emit(state.copyWith(hidePassword: !state.hidePassword));
  }
}
