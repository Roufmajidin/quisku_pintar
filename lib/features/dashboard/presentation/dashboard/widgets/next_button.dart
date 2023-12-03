import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

// ignore: must_be_immutable
class NextButtonWidget extends StatelessWidget {
  String title;

  NextButtonWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary.pr10,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
            child: Text(
              title,
              style: AppTextStyle.body2
                  .copyWith(color: AppColors.neutral.ne01)
                  .setMedium(),
            ),
          ),
        ),
      ),
    );
  }
}
