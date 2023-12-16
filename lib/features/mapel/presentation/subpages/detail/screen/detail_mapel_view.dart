import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/widgets/log_tugas.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/widgets/presensi.dart';

class DetailMapelView extends StatelessWidget {
  final Pelajaran mapel;
  // final int ujianId;

  DetailMapelView({
    Key? key,
    required this.mapel,
    // required this.ujianId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cari objek pelatihan berdasarkan title di dalam dataPelatihan
    // final acaraU = dataAcara.firstWhere((p) => p['title'] == title);
    // log(ujian.guru);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          mapel.mapel,
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
                        imageUrl: mapel.images,
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
                      mapel.mapel,
                      style: AppTextStyle.body3.setSemiBold(),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      mapel.guru,
                      textAlign: TextAlign.justify,
                      style: AppTextStyle.body4
                          .setRegular()
                          .copyWith(color: AppColors.neutral.ne10),
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
                              Tab(text: 'Presensi'),
                              Tab(text: 'Penugasan'),
                              Tab(text: 'Log tugas'),
                            ],
                          ),
                          SizedBox(
                            height: 300,
                            child: TabBarView(
                              children: [
                                ListView(
                                  children: [
                                    PresensiWidget(data: mapel),
                                  ],
                                ),
                                ListView(
                                  children: [
                                    // ContentInformasi(data: ujian),
                                  ],
                                ),
                                ListView(
                                  children: [
                                    LogTugas(data: mapel),
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
      // bottomNavigationBar: UjianButton(ujian: ujian, ujianId: ujianId),
    );
  }
}
