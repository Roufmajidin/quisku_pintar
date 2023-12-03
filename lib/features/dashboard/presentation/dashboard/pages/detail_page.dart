import 'package:flutter/material.dart';

import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

import '../widgets/next_button.dart';

class DetailPelatihanView extends StatelessWidget {
  final String title;

  const DetailPelatihanView({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> dataPelatihan = [
      {
        'image': Assets.images.lp1.path.toString(),
        'title': 'Keterampilan\nKomunikasi',
        'mentor': 'Neneng Rohaye S.Kom.',
        'sks': '3 SKS',
        'video': '14 Video',
        'rating': '4.0',
      },
      {
        'image': Assets.images.lp2.path.toString(),
        'title': 'Project Management',
        'mentor': 'Neneng Rohaye S.Kom.',
        'sks': '3 SKS',
        'video': '14 Video',
        'rating': '4.0',
      },
      {
        'image': Assets.images.lp3.path.toString(),
        'title': 'UI/UX Designer\nTingkat Lanjut',
        'mentor': 'Neneng Rohaye S.Kom.',
        'sks': '3 SKS',
        'video': '14 Video',
        'rating': '4.0',
      },
      {
        'image': Assets.images.lp4.path.toString(),
        'title': 'AI & Data Science\nDalam industri',
        'mentor': 'Neneng Rohaye S.Kom.',
        'sks': '3 SKS',
        'video': '14 Video',
        'rating': '4.0',
      },
      {
        'image': Assets.images.lp5.path.toString(),
        'title': 'CyberSecurity & Network',
        'mentor': 'Neneng Rohaye S.Kom.',
        'sks': '3 SKS',
        'video': '14 Video',
        'rating': '4.0',
      },
      {
        'image': Assets.images.lp6.path.toString(),
        'title': 'VR & Game',
        'mentor': 'Neneng Rohaye S.Kom.',
        'sks': '3 SKS',
        'video': '14 Video',
        'rating': '4.0',
      },
    ];
    final pelatihan = dataPelatihan.firstWhere((p) => p['title'] == title);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail Ujian',
          style: AppTextStyle.body3.setSemiBold(),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey,
                child: Image.asset(
                  pelatihan['image']!,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Assets.images.profileDetail.image(width: 40),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Neneng Rohaye',
                                style: AppTextStyle.body3.setSemiBold(),
                              ),
                              Text(
                                'Guru',
                                style: AppTextStyle.body4
                                    .setRegular()
                                    .copyWith(color: AppColors.neutral.ne10),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Ujian',
                        style: AppTextStyle.body3.setSemiBold(),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Kerjakan dengan benar dan teliti, jika sudah baca kembali dengan seksama. Baca Doa sebelum memulai. ',
                        textAlign: TextAlign.justify,
                        style: AppTextStyle.body4
                            .setRegular()
                            .copyWith(color: AppColors.neutral.ne10),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Detail Ujian',
                        style: AppTextStyle.body3.setSemiBold(),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Assets.icons.pertemuand.svg(),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Pemrgoraman Internet',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 32,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Assets.icons.ujiand.svg(),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Neneng Rohaye',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Assets.icons.tugasd.svg(),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '10 Soal',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Assets.icons.kuisd.svg(),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '10 point per nomor',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Peraturan Ujian',
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
                                'Baca Doa sebeum memuai ujian',
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
                                'Dilarang mencontek',
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
                                'Jika sudah selesai harap baca kembali\npada soal-soal yang dijawab',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: NextButtonWidget(title: "Mulai Ujian"),
    );
  }
}
