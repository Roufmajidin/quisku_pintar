import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class AlertButtonFinish extends StatelessWidget {
  final Function callBack;

  const AlertButtonFinish({
    super.key,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          ButtonWidgetAlert(
              label: 'Selesai', isFilledButton: true, callBack: callBack),
          ButtonWidgetAlert(
              label: 'Kembali', isFilledButton: false, callBack: callBack),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonWidgetAlert extends StatelessWidget {
  bool isFilledButton;
  final Function callBack;
  ButtonWidgetAlert(
      {super.key,
      required this.label,
      required this.isFilledButton,
      required this.callBack});

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
            callBack();
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
