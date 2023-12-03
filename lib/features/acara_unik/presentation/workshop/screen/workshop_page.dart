import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/workshop/screen/workshop_view.dart';

@RoutePage()
class WorkshopPage extends StatelessWidget {
  const WorkshopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const WorkshopView();
  }
}
