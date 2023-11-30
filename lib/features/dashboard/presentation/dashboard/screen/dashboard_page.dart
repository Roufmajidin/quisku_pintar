import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/features/authentication/presentation/bloc/login_bloc.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_view.dart';

import '../../../../authentication/presentation/data/datasources/auth_datasources.dart';
import '../../../../authentication/presentation/data/repositories/auth_repositroy_impl.dart';
import '../../../../authentication/presentation/data/usecases/login_usecase.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataSources = AuthenticationDataSources();

    final authRepository = AuthRepositoryImpl(authDataSources: dataSources);
    final loginUseCase = LoginUseCase(authRepository);
    return BlocProvider(
      create: (context) => LoginBloc(loginUseCase),
      child: DashboardView(),
    );
  }
}
