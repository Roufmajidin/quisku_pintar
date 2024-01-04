import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/common/validation/email.dart';
import 'package:quisku_pintar/common/validation/password.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/user.dart';
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
          hidePassword: true,
        )) {
    on<EmailChanged>(_emailChange);
    on<PasswordChanged>(_passwordChange);
    on<HiddenPassword>(_hidePassword);
    on<LoginSubmit>(_loginSubmit);
    on<GetUserData>(_getLoginLocalUser);
    on<Logout>(_logout);
  }
  // token
  _logout(Logout event, Emitter<LoginState> emit) async {
    emit(state.copyWith(onLogoutProses: FetchStatus.loading));
    await Future.delayed(const Duration(seconds: 3));
    await loginUsesCase.logout();
    log('done');
    emit(state.copyWith(onLogoutProses: FetchStatus.success));
  }

  _getLoginLocalUser(GetUserData event, Emitter<LoginState> emit) async {
    final getToken = await loginUsesCase.getLocalToken();
    final res = await loginUsesCase.getLogedUser(getToken);
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    res.fold((l) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }, (r) {
      emit(state.copyWith(status: FormzStatus.submissionSuccess));

      return emit(state.copyWith(user: r));
    });
  }

  _loginSubmit(LoginSubmit event, Emitter<LoginState> emit) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));

      final loginResult = await loginUsesCase.loginUseCase(
        state.email.value,
        state.password.value,
      );

      await loginResult.fold(
        (failure) async {
          emit(state.copyWith(status: FormzStatus.submissionFailure));
        },
        (user) async {
          emit(state.copyWith(status: FormzStatus.submissionSuccess));

          final userResult = await loginUsesCase.getLogedUser(user.accesToken);

          await userResult.fold(
            (failure) async {},
            (user) async {
              emit(state.copyWith(user: user));
            },
          );
        },
      );
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
  }

  void _passwordChange(PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
        password: password, status: Formz.validate([password, state.email])));
    // log('password ${state.status.toString()}');
  }

  void _hidePassword(HiddenPassword event, Emitter<LoginState> emit) {
    emit(state.copyWith(hidePassword: !state.hidePassword));
  }
}
