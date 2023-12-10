import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import 'package:quisku_pintar/features/authentication/bloc/login_bloc.dart';

import 'package:quisku_pintar/features/dashboard/data/usecases/getmapel_usecase.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/bloc/dashboard_bloc.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_view.dart';

import '../../../../authentication/presentation/data/usecases/login_usecase.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(sl<LoginUseCase>()),
        ),
        BlocProvider(
          create: (context) => DashboardBloc(sl<GetMapelUsecase>()),
        )
      ],
      child: const DashboardView(),
    );
  }
}
