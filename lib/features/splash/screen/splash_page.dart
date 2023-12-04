import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/features/authentication/presentation/bloc/login_bloc.dart';

import '../../../core/error/utils/endpoints.dart';
import '../../authentication/presentation/data/datasources/auth_datasources.dart';
import '../../authentication/presentation/data/repositories/auth_repositroy_impl.dart';
import '../../authentication/presentation/data/usecases/login_usecase.dart';
import '../splash_cubit/splash_cubit.dart';
import 'splash_view.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    //

    final dataSources = AuthenticationDataSources();

    final authRepository = AuthRepositoryImpl(authDataSources: dataSources);
    final loginUseCase = LoginUseCase(authRepository);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashCubit(loginUseCase, context)..init(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(loginUseCase),
        ),
      ],
      child: const SplashView(),
    );
  }
}
