import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/features/authentication/presentation/bloc/login_bloc.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/bloc/dashboard_bloc.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_view.dart';

import '../../../../authentication/presentation/data/datasources/auth_datasources.dart';
import '../../../../authentication/presentation/data/repositories/auth_repositroy_impl.dart';
import '../../../../authentication/presentation/data/usecases/login_usecase.dart';
import '../../../data/datasources/pelajaran_datasources.dart';
import '../../../data/repositories/pelajaran_repository_impl.dart';
import '../../../data/usecases/getmapel_usecase.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataSources = AuthenticationDataSources();

    final authRepository = AuthRepositoryImpl(authDataSources: dataSources);
    final loginUseCase = LoginUseCase(authRepository);
    // dashboard

    // data soruce
    final dtS = PelDatSources();
    // repos
    final pelRe =
        PelajaranRepositoryImpl(pelajaranDataSources: PelDatSources());
    // final PelajaranRepositoryImpl pelRe;

    final mapelUseCase = GetMapelUsecase(pelRe: pelRe);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(loginUseCase),
        ),
        BlocProvider(
          create: (context) => DashboardBloc(mapelUseCase),
        )
      ],
      child: const DashboardView(),
    );
  }
}
