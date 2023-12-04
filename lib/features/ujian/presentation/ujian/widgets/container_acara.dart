import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class ContainerAcara extends StatelessWidget {
  final String image;
  final String day;
  final String time;
  final String title;
  final String price;
  final String keterangan;

  const ContainerAcara({
    Key? key,
    required this.image,
    required this.title,
    required this.day,
    required this.time,
    required this.price,
    required this.keterangan,
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
                  width: double.infinity,
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
              Row(
                children: [
                  Text(
                    day,
                    style: AppTextStyle.body4.setRegular(),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '|',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    time,
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: AppTextStyle.body3.setSemiBold(),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.mknows.image(width: 38, height: 12),
                  const SizedBox(width: 4),
                  Assets.icons.x.svg(),
                  const SizedBox(width: 4),
                  Assets.icons.punch.svg(),
                  const SizedBox(width: 4),
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
                  Text(
                    price,
                    style: AppTextStyle.body4.setMedium().copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    keterangan,
                    style: AppTextStyle.body4
                        .setSemiBold()
                        .copyWith(color: AppColors.secondary.scGreen.sc11),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
