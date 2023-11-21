part of 'di.dart';

GetIt sl = GetIt.instance;

/// initialize service locator
Future<void> init() async {
  // local storage
  sl.registerLazySingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance().then((value) => value));
  await sl
      .isReady<SharedPreferences>(); // wait until SharedPreferences is ready

  // services
  sl.registerSingleton<TokenCacheService>(
    TokenCacheServiceImpl(),
    signalsReady: true,
  );
  sl.registerSingleton<GoogleAuthService>(
    GoogleAuthServiceImpl(),
    signalsReady: true,
  );

  // connection checker
  sl.registerLazySingletonAsync<ConnectivityResult>(
      () => Connectivity().checkConnectivity().then((value) => value));
  await sl
      .isReady<ConnectivityResult>(); // wait until ConnectivityResult is ready

  // route (only used on network request) *route without context
  sl.registerLazySingleton<AppRouter>(() => AppRouter());

  // network request
  sl.registerLazySingleton<NetworkRequest>(
      () => NetworkRequestImpl(sl(), sl(), sl()));

  //* features
  _slAuthenticationInit(); // authentication
  // _slArticle(); // sekilas ilmu
}
