import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class TerakhirMengerjakan extends StatelessWidget {
  const TerakhirMengerjakan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Terakhir Mengerjakan',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Assets.images.lp1.image(width: 80, height: 64),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Keterampilan Komunikasi',
                            style: AppTextStyle.body3.setSemiBold(),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Neneng Rohaye S. Kom.',
                            style: AppTextStyle.body4
                                .copyWith(color: AppColors.neutral.ne06),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Assets.icons.sks.svg(),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                '3 SKS',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Assets.icons.video.svg(),
                              Text(
                                '14 Video',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Assets.icons.user.svg(),
                              Text(
                                '80',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
