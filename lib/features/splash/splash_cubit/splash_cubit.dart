import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../authentication/presentation/data/usecases/login_usecase.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  final LoginUseCase loginUseCase;

  SplashCubit(this.loginUseCase)
      : super(const SplashState.loaded(authenticated: false));

  void init() async {
    FlutterNativeSplash.remove(); // remove native splash

    await checkUserIsLogin();
    await _getAppVersion();
  }

  Future<void> _getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final appVersion = packageInfo.version;

    emit(state.copyWith(appVersion: 'v$appVersion'));
  }

  Future<void> checkUserIsLogin() async {
    final loginStatus = await loginUseCase.getLocalToken();
    final getUser = await loginUseCase.getLogedUser(loginStatus);
    await Future.delayed(const Duration(seconds: 4));
    // ignore: unnecessary_null_comparison
    if (loginStatus != null) {
      emit(state.copyWith(authenticated: true));
      // kalo != null
      getUser;
    } else {
      emit(state.copyWith(authenticated: false));
    }

    log(' => splash, login is : ${state.authenticated}');
  }

  /// check the user is logged in by checking the token is empty or not
  // Future<void> _checkUserIsLoggedIn() async {
  //   final token = _tokenCacheService.token;

  //   log('AUTHENTICATED : ${token != null}');

  //   await Future.delayed(const Duration(seconds: 3));
  //   return emit(state.copyWith(authenticated: token != null));
  // }
}
