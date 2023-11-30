import 'package:flutter/material.dart';

import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

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
          'Detail Pelatihan',
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
                                'Mentor',
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
                        'Tentang Pelatihan',
                        style: AppTextStyle.body3.setSemiBold(),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Pelatihan Keterampilan Komunikasi adalah program pendidikan yang dirancang untuk membantu peserta mengembangkan kemampuan komunikasi mereka. Program ini bertujuan untuk meningkatkan kemampuan berbicara, mendengarkan, dan berinteraksi secara efektif dalam berbagai situasi. ',
                        textAlign: TextAlign.justify,
                        style: AppTextStyle.body4
                            .setRegular()
                            .copyWith(color: AppColors.neutral.ne10),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Pelatihan ini terdiri dari',
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
                                '24 Pertemuan',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 32,
                              ),
                              Assets.icons.ujiand.svg(),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '1 Ujian Akhir',
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
                                '16 Tugas',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 65,
                              ),
                              Assets.icons.sksd.svg(),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                pelatihan['sks']!,
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
                                '12 Kuis',
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
                      )
                    ],
                  ),
                ),
              ),
              // Text(pelatihan['video']!),
              // Text(pelatihan['user']!),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: const SaveButton(),
    );
  }
}
