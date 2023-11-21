part of 'di.dart';

void _slAuthenticationInit() {
  // blocs
  sl.registerFactory(() => LoginBloc());
  sl.registerFactory(() => RegisterBloc());

  // remote data source
  sl.registerLazySingleton<AuthenticationRemoteDataSource>(
      () => AuthenticationRemoteDataSourceImpl(sl()));

  // repository
  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(sl()));

  // usecases
  sl.registerLazySingleton<LoginEmailPasswordUseCase>(
      () => LoginEmailPasswordUseCase(sl(), sl()));
}
