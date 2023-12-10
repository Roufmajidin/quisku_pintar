import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import 'package:quisku_pintar/features/authentication/bloc/login_bloc.dart';
import 'package:quisku_pintar/features/authentication/presentation/login/screen/login_view.dart';
import '../../../../authentication/presentation/data/usecases/login_usecase.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    setupDependency();
    return BlocProvider(
      create: (context) => LoginBloc(sl<LoginUseCase>()),
      child: const LoginView(),
    );
  }
}
