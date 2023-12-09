import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';
import 'package:quisku_pintar/features/ujian/data/usecases/getujian_usecase.dart';

import 'package:quisku_pintar/features/ujian/presentation/ujian/bloc/ujian_bloc.dart';
import 'package:quisku_pintar/features/ujian/presentation/ujian/screen/ujian_view.dart';

import '../../../../authentication/presentation/data/datasources/auth_datasources.dart';
import '../../../../authentication/presentation/data/repositories/auth_repositroy_impl.dart';

@RoutePage()
class UjianPage extends StatelessWidget {
  const UjianPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataSources = AuthenticationDataSources();

    final authRepository = AuthRepositoryImpl();
    final loginUseCase = LoginUseCase();

    // ujianUsecase;
    //

    return BlocProvider(
      create: (context) => UjianBloc(
          loginusecase: sl<LoginUseCase>(),
          ujianusecase: sl<GetUjianUsecase>()),
      child: const UjianView(),
    );
  }
}
