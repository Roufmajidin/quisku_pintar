import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/report_nilai/presentation/riwayat_konversi/screen/riwayat_konversi_view.dart';

@RoutePage()
class RiwayatKonversiPage extends StatelessWidget {
  const RiwayatKonversiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RiwayatKonversiView();
  }
}
