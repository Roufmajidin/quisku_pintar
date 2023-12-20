// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/lihat_materi/screen/readpdf_view.dart';

@RoutePage()
class ReadPdfPage extends StatelessWidget {
  String pdfLink;

  ReadPdfPage({super.key, required this.pdfLink});

  @override
  Widget build(BuildContext context) {
    return ReadPdfView(link: pdfLink);
  }
}
