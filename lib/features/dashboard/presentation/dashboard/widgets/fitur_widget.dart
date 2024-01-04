import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

import 'widgets.dart';

class FiturWidget extends StatelessWidget {
  const FiturWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fitur',
              style: AppTextStyle.body3.setSemiBold(),
            ),
            const FiturLxp(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
