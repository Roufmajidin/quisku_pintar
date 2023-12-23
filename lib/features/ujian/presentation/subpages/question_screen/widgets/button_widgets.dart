// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/widgets/widget.dart';

// ignore: must_be_immutable
class ButtonWidgets extends StatelessWidget {
  String label;

  final Icon icon;

  bool isReversePosition;

  bool isLastQuestion;

  ButtonWidgets(
      {super.key,
      required this.isLastQuestion,
      required this.label,
      required this.icon,
      required this.isReversePosition});

  @override
  Widget build(BuildContext context) {
    log('is Lasquestion : $isLastQuestion');
    if (isLastQuestion == true) {
      return ElevatedButton(
        // popup alert ketika selesai mengerjakan quis

        onPressed: () {
          showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel:
                MaterialLocalizations.of(context).modalBarrierDismissLabel,
            barrierColor: Colors.black.withOpacity(0.5),
            transitionDuration: const Duration(milliseconds: 250),
            pageBuilder: (BuildContext buildContext,
                Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AlertDialog(
                  backgroundColor: AppColors.neutral.ne01,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  insetPadding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: MediaQuery.of(context).size.height * 0.20),
                  content: Column(
                    children: [
                      Assets.images.thinkingFaceBro1.svg(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Selesai Quiz?',
                          style: AppTextStyle.body3.setSemiBold(),
                        ),
                      ),
                      const Text(
                        'Tekan tombol Selesai untuk melihat hasil Test ',
                        style: AppTextStyle.body3,
                      ),
                      // ignore: prefer_const_constructors
                      AlertButton()
                    ],
                  ),
                ),
              );
            },
            transitionBuilder: Transition,
          );
          // context.router.push(const HasilTestRoute());
        },
        // onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary.pr10,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2),
          child: Text(
            label,
            style: AppTextStyle.body2
                .copyWith(color: AppColors.neutral.ne01)
                .setMedium(),
          ),
        ),
      );
    } else {
      return Row(
        children: [
          isReversePosition == true
              ? Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    label,
                    style: AppTextStyle.body4.setMedium(),
                  ),
                )
              : const SizedBox(),
          Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.primary.pr10,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: icon),
          isReversePosition == false
              ? Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    label,
                    style: AppTextStyle.body4.setMedium(),
                  ),
                )
              : const SizedBox(),
        ],
      );
    }
  }

  Widget Transition(BuildContext buildContext, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    const begin = Offset(0.0, 1.0);
    const end = Offset(0.0, 0.0);
    const curve = Curves.easeInOut;

    var curveTween = CurveTween(curve: curve);
    var tween = Tween(begin: begin, end: end).chain(curveTween);

    var offsetAnimation = animation.drive(tween);
    return SlideTransition(
      position: offsetAnimation,
      child: child,
    );
  }
}
