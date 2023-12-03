import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/screen/detail_acara_view.dart';

@RoutePage()
class DetailAcaraPage extends StatelessWidget {
  final String title;

  const DetailAcaraPage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailAcaraView(title: title);
  }
}
