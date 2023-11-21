part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loaded(
      {required bool authenticated, String? appVersion}) = SplashLoadedState;
}
