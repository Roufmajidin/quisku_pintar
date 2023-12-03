import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class contentDeskripsi extends StatelessWidget {
  const contentDeskripsi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deskripsi Acara',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Webinar ini dirancang khusus untuk individu yang tertarik dalam karier di bidang desain UI/UX atau mereka yang ingin meningkatkan keterampilan wawancara mereka dalam konteks ini',
            style: AppTextStyle.body4.setRegular(),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Apa yang kamu dapat?',
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
                    'Sertifikat kursus pelatihan',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Opsi belajar mandiri yang efektif',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Sertifikat kursus pelatihan',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Video pelatihan dapat dipelajari kapan saja',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Tugas untuk melatih kemampuan',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Kuis dengan nilai',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Diskusi dengan mentor dan teman',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Belajar berbicara di depan umum',
                    style: AppTextStyle.body4.setRegular(),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Assets.icons.doned.svg(),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Kemampuan Menyampaikan Ide dengan Efektif',
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
          Text(
            'Informasi Tambahan',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('•'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Harga Normal Rp 200.000',
                      style: AppTextStyle.body4.setRegular(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('•'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Via Zoom',
                      style: AppTextStyle.body4.setRegular(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('•'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'WhatsApp: 62 821-2170-8023 (Julaiha)',
                      style: AppTextStyle.body4.setRegular(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text('•'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Email: support@ngampooz.com',
                      style: AppTextStyle.body4.setRegular(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Link Zoom akan diberikan ketika anda telah\nmendaftar melalui email!',
            style: AppTextStyle.body4.setRegular(),
          ),
        ],
      ),
    );
  }
}
