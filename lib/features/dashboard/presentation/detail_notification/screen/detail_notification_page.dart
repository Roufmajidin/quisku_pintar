import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/dashboard/presentation/detail_notification/screen/detail_notification_view.dart';

@RoutePage()
class DetailNotificationPage extends StatelessWidget {
  final String title;
  final String date;

  const DetailNotificationPage(
      {super.key, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return DetailNotificationView(
      title: title,
      date: date,
    );
  }
}
