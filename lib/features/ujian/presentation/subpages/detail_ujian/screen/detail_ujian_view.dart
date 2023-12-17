import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

import '../../../../data/models/ujian_models.dart';
import '../widgets/widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailUjianView extends StatelessWidget {
  final Ujian ujian;
  final int ujianId;

  const DetailUjianView({Key? key, required this.ujian, required this.ujianId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cari objek pelatihan berdasarkan title di dalam dataPelatihan
    // final acaraU = dataAcara.firstWhere((p) => p['title'] == title);
    // log(ujian.guru);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail Ujian',
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
                      child: CachedNetworkImage(
                        imageUrl: ujian.images,
                        fit: BoxFit.cover,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      ujian.mapel,
                      style: AppTextStyle.body3.setSemiBold(),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      ujian.guru,
                      textAlign: TextAlign.justify,
                      style: AppTextStyle.body4
                          .setRegular()
                          .copyWith(color: AppColors.neutral.ne10),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      ujian.status,
                      style: AppTextStyle.body3.setMedium().copyWith(
                          color: ujian.status == 'Sudah Mengerjakan'
                              ? AppColors.secondary.scGreen.sc11
                              : AppColors.danger.dng09),
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
                              Tab(text: 'Detail'),
                              Tab(text: 'Kisi-kisi'),
                            ],
                          ),
                          SizedBox(
                            height: 300,
                            child: TabBarView(
                              children: [
                                ListView(
                                  children: [
                                    ContentDeskripsi(data: ujian),
                                  ],
                                ),
                                ListView(
                                  children: [
                                    ContentInformasi(data: ujian),
                                  ],
                                ),
                                ListView(
                                  children: [
                                    ContentContact(data: ujian),
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
      bottomNavigationBar: UjianButton(ujian: ujian, ujianId: ujianId),
    );
  }
}
