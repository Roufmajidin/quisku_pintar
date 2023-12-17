import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:timer_count_down/timer_count_down.dart';

// ignore: use_key_in_widget_constructors
class TimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Countdown(
      seconds: 600,
      build: (BuildContext context, double time) {
        final minutes = (time / 60).floor();
        final seconds = (time % 60).floor();
        final formattedTime = '$minutes:${seconds.toString().padLeft(2, '0')}';
        return Text(
          formattedTime,
          style: AppTextStyle.body4.copyWith(
              fontWeight: FontWeight.w400, color: AppColors.danger.dng05),
        );
      },
      interval: const Duration(seconds: 1),
      onFinished: () {},
    );
  }
}
