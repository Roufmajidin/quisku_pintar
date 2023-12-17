import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';
import 'package:quisku_pintar/features/ujian/data/datasources/ujian_datasources.dart';
import 'package:quisku_pintar/features/ujian/data/repositories/ujian_repository_impl.dart';

import '../../../../data/usecases/getujian_usecase.dart';
import '../../../ujian/bloc/ujian_bloc.dart';
import 'question_view.dart';

@RoutePage()
class QuestionPage extends StatelessWidget {
  final int id;
  final int ujianId;
  const QuestionPage({super.key, required this.id, required this.ujianId});

  @override
  Widget build(BuildContext context) {
    final loginUseCase = LoginUseCase();

    // ujianUsecase;
    //
    final uds = UjianDS();
    final uR = UjianRepositoryImpl(ujianDataSources: uds);
    final ucase = GetUjianUsecase(pelre: uR);
    return BlocProvider(
      create: (context) =>
          UjianBloc(loginusecase: loginUseCase, ujianusecase: ucase),
      child: QuestionView(
        ujianId: id,
        id: ujianId,
      ),
    );
  }
}
