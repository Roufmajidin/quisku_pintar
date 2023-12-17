import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';

import '../../../../../../common/themes/themes.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  bool isFilledButton;
  Function tapped;
  double? customWidth;

  ButtonWidget(
      {super.key,
      required this.label,
      required this.isFilledButton,
      this.customWidth,
      required this.tapped});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: customWidth != null ? customWidth : 148,
      child: ElevatedButton(
        onPressed: () => tapped(),
        style: isFilledButton == false
            ? ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    width: 1.5,
                    color: AppColors.primary.pr10, // Set the border color
                  ),
                ),
              )
            : ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary.pr10,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2),
          child: Text(
            label,
            style: AppTextStyle.body2
                .copyWith(
                    color: isFilledButton
                        ? AppColors.neutral.ne01
                        : AppColors.primary.pr10)
                .setMedium(),
          ),
        ),
      ),
    );
  }
}
