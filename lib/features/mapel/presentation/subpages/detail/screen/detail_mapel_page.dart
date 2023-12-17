// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'package:quisku_pintar/features/mapel/data/usecases/mapel_usecase.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/screen/detail_mapel_view.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/data/models/question.dart';

// ignore: must_be_immutable
@RoutePage()
class DetailMapelPage extends StatelessWidget {
  final Pelajaran data;

  // int ujianId;

  DetailMapelPage(
      {
      //   required this.data,
      required this.data,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapelBloc(mapelUsecase: sl<MapelUsecase>()),
      child: DetailMapelView(mapel: data),
    );
  }
}
