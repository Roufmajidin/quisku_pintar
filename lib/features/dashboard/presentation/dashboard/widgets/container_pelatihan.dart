import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class ContainerPelatihan extends StatelessWidget {
  final String image;
  final String guru;
  final String mapel;

  const ContainerPelatihan({
    Key? key,
    required this.image,
    required this.guru,
    required this.mapel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                // height: 115,
                width: 132,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.neutral.ne03),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              guru,
              style: AppTextStyle.body3.setSemiBold(),
            ),
            const SizedBox(height: 4),
            Text(
              mapel,
              style: AppTextStyle.body4.setRegular(),
            ),
            const SizedBox(height: 8),
            Divider(
              height: 2,
              color: AppColors.neutral.ne02,
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
