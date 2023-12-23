import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

// ignore: must_be_immutable
class BuildFinalScore extends StatelessWidget {
  double value;
  String title;

  BuildFinalScore({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 37,
      decoration: BoxDecoration(
          color: AppColors.primary.pr11,
          border: const Border(bottom: BorderSide(color: Colors.white))),
      child: Row(
        children: [
          Container(
              width: 190,
              height: 70,
              decoration: const BoxDecoration(
                  border: Border(right: BorderSide(color: Colors.white))),
              child: Center(
                  child: Text(
                title,
                style: AppTextStyle.body3
                    .setMedium()
                    .copyWith(color: Colors.white),
              ))),
          Expanded(
            child: SizedBox(
                width: 76,
                height: 70,
                child: Center(
                    child: Text(
                  value.toStringAsFixed(0),
                  style: AppTextStyle.body3
                      .setMedium()
                      .copyWith(color: Colors.white),
                ))),
          ),
        ],
      ),
    );
  }
}
