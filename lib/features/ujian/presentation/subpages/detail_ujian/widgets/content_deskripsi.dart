import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart';

// ignore: camel_case_types, must_be_immutable
class ContentDeskripsi extends StatelessWidget {
  Ujian data;

  ContentDeskripsi({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deskripsi Ujian',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'ujian ${data.mapel} adalah matakuliah yang diampu oleh ${data.guru}. Kerjakan ujian dengan teliti dan tidak usah terburu-buru. Harap dengan seksama dan tidak mencontek, semangat !',
            style: AppTextStyle.body4.setRegular(),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            '-',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: [
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '-',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
