import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

import 'timer_widget.dart';

// ignore: must_be_immutable
class ProgressWidget extends StatelessWidget {
  int progres;
  int lengthQuestion;
  ProgressWidget(
      {super.key, required this.progres, required this.lengthQuestion});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    double widthProgress = (size.width / lengthQuestion) * progres;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$progres/$lengthQuestion',
                  style:
                      AppTextStyle.body4.copyWith(fontWeight: FontWeight.w400)),
              TimerWidget()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 44),
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: 10,
                decoration: BoxDecoration(
                    color: AppColors.primary.pr02,
                    borderRadius: BorderRadius.circular(12)),
              ),
              Container(
                width: widthProgress,
                height: 10,
                decoration: BoxDecoration(
                    color: AppColors.primary.pr10,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
