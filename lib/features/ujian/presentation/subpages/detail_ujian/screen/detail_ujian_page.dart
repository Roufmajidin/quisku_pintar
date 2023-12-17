// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/detail_ujian/screen/detail_ujian_view.dart';

@RoutePage()
class DetailUjianPage extends StatelessWidget {
  final Ujian data;

  int ujianId;

  DetailUjianPage({required this.data, required this.ujianId, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailUjianView(ujian: data, ujianId: ujianId);
  }
}
