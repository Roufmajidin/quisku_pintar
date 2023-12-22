import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/data/usecases/mapel_usecase.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/pengumpulan_tugas/screen/peng_tugas_view.dart';

// ignore: must_be_immutable
class PengumpulanTugasPage extends StatelessWidget {
  Presensi presensi;
  Pelajaran pel;

  PengumpulanTugasPage({super.key, required this.presensi, required this.pel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapelBloc(mapelUsecase: sl<MapelUsecase>()),
      child: PengumpulanTugasView(presensi: presensi, pel: pel),
    );
  }
}
