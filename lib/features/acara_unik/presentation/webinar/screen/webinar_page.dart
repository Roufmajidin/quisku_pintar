import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/webinar/screen/webinar_view.dart';

@RoutePage()
class WebinarPage extends StatelessWidget {
  const WebinarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const WebinarView();
  }
}
