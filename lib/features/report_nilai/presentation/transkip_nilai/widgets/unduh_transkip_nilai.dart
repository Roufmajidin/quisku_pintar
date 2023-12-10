import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class UnduhTranskipNilai extends StatelessWidget {
  const UnduhTranskipNilai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.primary.pr10,
        ),
        child: ElevatedButton(
          onPressed: () {
            // unduh transkip nilai
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Unduh Transkip',
                  style: AppTextStyle.body2
                      .setMedium()
                      .copyWith(color: AppColors.neutral.ne01),
                ),
                const SizedBox(
                  width: 8,
                ),
                Assets.icons.unduh.svg(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
