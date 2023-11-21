import 'package:flutter/material.dart';

import '../../../../../common/extensions/extensions.dart';
import '../../../../../common/themes/themes.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "Lupa Kata Sandi?",
        textAlign: TextAlign.end,
        style: AppTextStyle.body3
            .setMedium()
            .copyWith(color: AppColors.primary.pr05),
      ),
    );
  }
}
