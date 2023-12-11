import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class BuildRowField extends StatelessWidget {
  const BuildRowField({
    super.key,
    required this.item,
    this.customeWidth,
    this.color,
  });

  final String item;
  final Color? color;
  final double? customeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: customeWidth != null ? customeWidth : 80,
      height: 60,
      // color: getContainerColor(itemIndex),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          item,
          style: AppTextStyle.body4
              .setRegular()
              .copyWith(color: AppColors.neutral.ne12),
        ),
      ),
    );
  }
}
