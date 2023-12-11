import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class BuildRowField extends StatelessWidget {
  const BuildRowField({
    super.key,
    required this.item,
    this.customeWidth,
  });

  final String item;
  final double? customeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: customeWidth != null ? customeWidth : 80,
      height: 70,
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
