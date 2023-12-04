import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/detail_pelatihan/screen/detail_ujian_view.dart';

@RoutePage()
class DetailUjianPage extends StatelessWidget {
  final Ujian data;

  const DetailUjianPage({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailUjianView(ujian: data);
  }
}
