import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/pengumpulan_tugas/screen/peng_tugas_view.dart';

// ignore: must_be_immutable
class PengumpulanTugasPage extends StatelessWidget {
  Presensi presensi;
  Pelajaran pel;

  PengumpulanTugasPage({super.key, required this.presensi, required this.pel});

  @override
  Widget build(BuildContext context) {
    return PengumpulanTugasView(presensi: presensi, pel: pel);
  }
}
