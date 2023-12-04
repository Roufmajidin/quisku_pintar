import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';
import 'package:quisku_pintar/features/ujian/data/datasources/ujian_datasources.dart';
import 'package:quisku_pintar/features/ujian/data/repositories/ujian_repository_impl.dart';
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

    final authRepository = AuthRepositoryImpl(authDataSources: dataSources);
    final loginUseCase = LoginUseCase(authRepository);

    // ujianUsecase;
    //
    final uds = UjianDS();
    final uR = UjianRepositoryImpl(ujianDataSources: uds);
    final ucase = GetUjianUsecase(pelre: uR);

    return BlocProvider(
      create: (context) =>
          UjianBloc(loginusecase: loginUseCase, ujianusecase: ucase),
      child: const UjianView(),
    );
  }
}
