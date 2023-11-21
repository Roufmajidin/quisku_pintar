import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lxp_mobile/features/dashboard/presentation/dashboard/screen/dashboard_view.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashboardView();
  }
}
