import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class CarouselSertifikat extends StatelessWidget {
  const CarouselSertifikat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white, // Ganti warna container sesuai kebutuhan
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dapatkan Sertifikat',
                  style: AppTextStyle.body2.setSemiBold(),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dapatkan program sertifikat\nprofesional yang tepat\nuntuk Anda.',
                  style: AppTextStyle.body4
                      .copyWith(color: AppColors.neutral.ne06),
                )
              ],
            ),
            Expanded(
              child: Image.asset('assets/images/content1.png'),
            )
          ],
        ),
      ),
    );
  }
}
