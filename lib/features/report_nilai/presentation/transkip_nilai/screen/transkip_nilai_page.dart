import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';
import 'package:quisku_pintar/features/report_nilai/bloc/nilai_bloc.dart';
import 'package:quisku_pintar/features/report_nilai/data/usecases/report_usecase.dart';
import 'package:quisku_pintar/features/report_nilai/presentation/transkip_nilai/screen/transkip_nilai_view.dart';

@RoutePage()
class TranskipNilaiPage extends StatelessWidget {
  const TranskipNilaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NilaiBloc(
        sl<ReportUsecase>(),
        sl<LoginUseCase>(),
      ),
      // ignore: prefer_const_constructors
      child: TranskipNilaiView(),
    );
  }
}
