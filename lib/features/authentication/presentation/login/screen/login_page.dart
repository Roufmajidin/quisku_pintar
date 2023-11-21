import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lxp_mobile/core/injection/di.dart';
import 'package:lxp_mobile/features/authentication/presentation/login/screen/login_view.dart';

import '../controllers/bloc/login_bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginBloc>(),
      child: const LoginView(),
    );
  }
}
