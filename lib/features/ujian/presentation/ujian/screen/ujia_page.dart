import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';
import 'package:quisku_pintar/features/ujian/data/usecases/getujian_usecase.dart';

import 'package:quisku_pintar/features/ujian/presentation/ujian/bloc/ujian_bloc.dart';
import 'package:quisku_pintar/features/ujian/presentation/ujian/screen/ujian_view.dart';

@RoutePage()
class UjianPage extends StatelessWidget {
  const UjianPage({super.key});

  @override
  Widget build(BuildContext context) {
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
