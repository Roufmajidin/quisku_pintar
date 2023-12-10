import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';

import '../../../../../common/themes/themes.dart';

// ignore: must_be_immutable
class ChildTab extends StatelessWidget {
  String label;

  ChildTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width / 3;
    return SizedBox(
      width: screenWidth,
      height: 50,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text(label, style: AppTextStyle.body3.setSemiBold()
              // .copyWith(color: AppColors.neutral.ne09),
              ),
        ),
      ),
    );
  }
}
