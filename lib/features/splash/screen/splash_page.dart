import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import '../../authentication/presentation/data/usecases/login_usecase.dart';
import '../splash_cubit/splash_cubit.dart';
import 'splash_view.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashCubit(sl<LoginUseCase>(), context)..init(),
        ),
        // BlocProvider(
        //   create: (context) => LoginBloc(sl<LoginUseCase>()),
        // ),
      ],
      child: const SplashView(),
    );
  }
}
