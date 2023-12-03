import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/acara_unik/screen/ujian_view.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/widgets/content_deskripsi.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/widgets/content_informasi.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/widgets/content_kontak.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/widgets/register_button.dart';

class DetailAcaraView extends StatelessWidget {
  final String title;

  const DetailAcaraView({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cari objek pelatihan berdasarkan title di dalam dataPelatihan
    final acaraU = dataAcara.firstWhere((p) => p['title'] == title);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail Pelatihan',
          style: AppTextStyle.body3.setSemiBold(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 208,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  // color: Colors.grey,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      acaraU['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      title,
                      style: AppTextStyle.body3.setSemiBold(),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Dr. Blake Lambert',
                      textAlign: TextAlign.justify,
                      style: AppTextStyle.body4
                          .setRegular()
                          .copyWith(color: AppColors.neutral.ne10),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Gratis',
                      style: AppTextStyle.body3
                          .setMedium()
                          .copyWith(color: AppColors.secondary.scGreen.sc11),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Assets.icons.date.svg(),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Minggu, 20 April 2023',
                          style: AppTextStyle.body4
                              .setRegular()
                              .copyWith(color: AppColors.neutral.ne12),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Assets.icons.time.svg(),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '13.00 - 15.00',
                          style: AppTextStyle.body4
                              .setRegular()
                              .copyWith(color: AppColors.neutral.ne12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          const TabBar(
                            tabs: [
                              Tab(text: 'Deskripsi'),
                              Tab(text: 'Informasi'),
                              Tab(text: 'Kontak'),
                            ],
                          ),
                          SizedBox(
                            height:
                                300, // Atur tinggi sesuai dengan konten TabBarView
                            child: TabBarView(
                              children: [
                                ListView(
                                  children: const [
                                    contentDeskripsi(),
                                  ],
                                ),
                                ListView(
                                  children: const [
                                    contentInformasi(),
                                  ],
                                ),
                                ListView(
                                  children: const [
                                    contentContact(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const RegisterButton(),
    );
  }
}
