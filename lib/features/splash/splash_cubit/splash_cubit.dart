import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.loaded(authenticated: false));

  void init() async {
    FlutterNativeSplash.remove(); // remove native splash

    await _getAppVersion();

    await checkUserIsLogin();
  }

  Future<void> _getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final appVersion = packageInfo.version;

    emit(state.copyWith(appVersion: 'v$appVersion'));
  }

  Future<void> checkUserIsLogin() async {
    await Future.delayed(const Duration(seconds: 3));

    log('AUTHENTICATED : ${state.authenticated}');

    emit(state.copyWith(authenticated: true));
  }

  /// check the user is logged in by checking the token is empty or not
  // Future<void> _checkUserIsLoggedIn() async {
  //   final token = _tokenCacheService.token;

  //   log('AUTHENTICATED : ${token != null}');

  //   await Future.delayed(const Duration(seconds: 3));
  //   return emit(state.copyWith(authenticated: token != null));
  // }
}
