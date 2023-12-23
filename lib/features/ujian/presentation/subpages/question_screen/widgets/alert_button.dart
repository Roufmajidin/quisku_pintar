import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          ButtonWidget(label: 'Selesai', isFilledButton: true),
          ButtonWidget(label: 'Kembali', isFilledButton: false),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  bool isFilledButton;

  ButtonWidget({super.key, required this.label, required this.isFilledButton});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        // popup alert ketika selesai mengerjakan quis

        onPressed: () {
          if (isFilledButton == true) {
            Navigator.pop(context);
          } else {
            Navigator.pop(context);
          }
        },
        style: isFilledButton == false
            ? ElevatedButton.styleFrom(
                // backgroundColor: AppColors.primary.pr10,
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
