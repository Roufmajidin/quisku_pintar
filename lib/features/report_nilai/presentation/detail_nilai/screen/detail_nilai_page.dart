import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/report_nilai/presentation/detail_nilai/screen/detail_nilai_view.dart';

@RoutePage()
class DetailNilaiPage extends StatelessWidget {
  final String pelatihan;
  const DetailNilaiPage({super.key, required this.pelatihan});

  @override
  Widget build(BuildContext context) {
    return DetailNilaiView(
      pelatihan: pelatihan,
    );
  }
}
