import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/datasources/auth_datasources.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/repositories/auth_repositroy_impl.dart';
import 'package:quisku_pintar/features/dashboard/data/datasources/pelajaran_datasources.dart';
import 'package:quisku_pintar/features/dashboard/data/repositories/pelajaran_repository_impl.dart';
import 'package:quisku_pintar/features/dashboard/data/usecases/getmapel_usecase.dart';
import 'package:quisku_pintar/features/report_nilai/data/datasources/Report_datasources.dart'
    as rids;
import 'package:quisku_pintar/features/report_nilai/data/repositories/report_repository_impl.dart';
import 'package:quisku_pintar/features/report_nilai/data/usecases/report_usecase.dart';
import 'package:quisku_pintar/features/ujian/data/datasources/ujian_datasources.dart'
    as uds;

import 'package:quisku_pintar/features/ujian/data/repositories/ujian_repository_impl.dart';
import 'package:quisku_pintar/features/ujian/data/usecases/getujian_usecase.dart';

import '../../features/authentication/presentation/data/usecases/login_usecase.dart';

final GetIt sl = GetIt.instance;
Future<void> setupDependency() async {
  // TODO : registerin authDatasoruce & repository
  // sl.registerFactory<LoginUseCase>(() => LoginUseCase());
  sl.registerSingleton<LoginUseCase>(LoginUseCase());
  sl.registerSingleton<GetMapelUsecase>(GetMapelUsecase());

  // sl.registerFactory<t.LoginUseCase>(() => t.LoginUseCase());
  // sl.registerLazySingleton(() => t.LoginUseCase());
  sl.registerSingleton<AuthenticationDataSources>(AuthenticationDataSources());
  sl.registerSingleton<AuthRepositoryImpl>(AuthRepositoryImpl());
  log('ok');

  //  TODO registerin ujianDataSource/pelajaran & repository
  sl.registerSingleton<PelajaranDataSources>(PelajaranDataSources());
  sl.registerSingleton<PelajaranRepositoryImpl>(PelajaranRepositoryImpl());

  //  TODO Ujian Dt S/pelajaran & repository
  sl.registerFactory<GetUjianUsecase>(() => GetUjianUsecase(pelre: sl()));
  sl.registerSingleton<uds.UjianDS>(uds.UjianDS());
  sl.registerSingleton(UjianRepositoryImpl(ujianDataSources: uds.UjianDS()));

  // TODO register report RDS
  sl.registerFactory<ReportUsecase>(() => ReportUsecase());
  sl.registerSingleton<rids.ReportDataSources>(rids.ReportDataSources());
  sl.registerSingleton<ReportRepositoryImpl>(ReportRepositoryImpl());
}
