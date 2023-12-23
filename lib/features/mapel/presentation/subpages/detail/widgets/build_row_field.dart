import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

// ignore: must_be_immutable
class BuildRowField extends StatelessWidget {
  BuildRowField({
    super.key,
    required this.item,
    this.customeWidth,
    this.color,
    required this.callback,
  });
  Function callback;

  final String item;
  final Color? color;
  final double? customeWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        color: color,
        width: customeWidth ?? 80,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            item,
            style: AppTextStyle.body4.setRegular().copyWith(
                color: item == 'Open'
                    ? AppColors.primary.pr10
                    : AppColors.neutral.ne12),
          ),
        ),
      ),
    );
  }
}
