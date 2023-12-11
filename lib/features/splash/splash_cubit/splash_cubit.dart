import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';

import '../../authentication/presentation/data/usecases/login_usecase.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  final LoginUseCase loginUseCase;

  final BuildContext _context;
  SplashCubit(this.loginUseCase, this._context)
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

  Future<bool> checkUserIsLogin() async {
    final loginStatus = await loginUseCase.getLocalToken();

    print('Token: $loginStatus');

    bool isAuthenticated =
        loginStatus == null && loginStatus.isEmpty ? false : true;

    // Update the state
    log(isAuthenticated.toString());
    emit(SplashState.loaded(authenticated: isAuthenticated));
    emit(state.copyWith(authenticated: isAuthenticated));
    if (loginStatus != 'null') {
      _context.router.push(
        HomeRoute(),
      );
    } else {
      _context.router.pushAndPopUntil(
        const LoginRoute(),
        predicate: (_) => false,
      );
    }
    return isAuthenticated;

    /// check the user is logged in by checking the token is empty or not
    // Future<void> _checkUserIsLoggedIn() async {
    //   final token = _tokenCacheService.token;

    //   log('AUTHENTICATED : ${token != null}');

    //   await Future.delayed(const Duration(seconds: 3));
    //   return emit(state.copyWith(authenticated: token != null));
    // }
  }
}
