import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/datasources/auth_datasources.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';
import 'package:quisku_pintar/features/authentication/presentation/login/screen/login_view.dart';

import '../../bloc/login_bloc.dart';
import '../../data/repositories/auth_repositroy_impl.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataSources = AuthenticationDataSources();

    final authRepository = AuthRepositoryImpl(authDataSources: dataSources);
    final loginUseCase = LoginUseCase(authRepository);
    return BlocProvider(
      create: (context) => LoginBloc(loginUseCase),
      child: const LoginView(),
    );
  }
}
