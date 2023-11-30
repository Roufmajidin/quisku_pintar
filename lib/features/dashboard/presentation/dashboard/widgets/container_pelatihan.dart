import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class ContainerPelatihan extends StatelessWidget {
  final String image;
  final String title;
  final String mentor;
  final String sks;
  final String video;
  final String rating;

  const ContainerPelatihan({
    Key? key,
    required this.image,
    required this.title,
    required this.sks,
    required this.video,
    required this.mentor,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: Container(
        height: 300,
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
                  height: 115,
                  width: 132,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral.ne03),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Text(
                title,
                style: AppTextStyle.body3.setSemiBold(),
              ),
              const SizedBox(height: 4),
              Text(
                mentor,
                style: AppTextStyle.body4.setRegular(),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Row(
                    children: [
                      Assets.icons.sks.svg(),
                      const SizedBox(width: 4),
                      Text(
                        sks,
                        style: AppTextStyle.body4,
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Row(
                    children: [
                      Assets.icons.video.svg(),
                      const SizedBox(width: 4),
                      Text(
                        video,
                        style: AppTextStyle.body4,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Divider(
                height: 2,
                color: AppColors.neutral.ne02,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.starFill.svg(),
                  const SizedBox(width: 4),
                  Assets.icons.starFill.svg(),
                  const SizedBox(width: 4),
                  Assets.icons.starFill.svg(),
                  const SizedBox(width: 4),
                  Assets.icons.starFill.svg(),
                  const SizedBox(width: 4),
                  Assets.icons.starNofill.svg(),
                  const SizedBox(width: 4),
                  Text(rating),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
