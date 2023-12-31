import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/widgets/widget.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/pengumpulan_tugas/screen/peng_tugas_page.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  List<Presensi> data;
  Pelajaran pelajaran;

  CardWidget({
    super.key,
    required this.widget,
    required this.data,
    required this.pelajaran,
  });

  final PresensiWidget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          var i = data[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            child: Container(
              // height: 200,
              width: double.infinity,
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 30,
                      child: Stack(
                        children: [
                          Text(
                            'Pertemuan ${i.pertemuan}',
                            style: AppTextStyle.body3
                                .setSemiBold()
                                .copyWith(color: AppColors.primary.pr10),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: CustomPaint(
                              painter: DottedLinePainter(),
                              child: Container(
                                height: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Detail',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        InkWell(
                          onTap: () {
                            log(i.file.toString());
                            context.pushRoute(ReadPdfRoute(pdfLink: i.file));
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Icon(
                                  Icons.picture_as_pdf,
                                  size: 16,
                                  color: AppColors.primary.pr10,
                                ),
                              ),
                              Text(
                                'Materi',
                                style: AppTextStyle.body4
                                    .setRegular()
                                    .copyWith(color: AppColors.primary.pr10),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tugas',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PengumpulanTugasPage(
                                        presensi: i,
                                        pel: pelajaran,
                                      )),
                            );
                          },
                          child: Text(
                            i.status == 1
                                ? 'Mengumpulkan'
                                : i.is_tugas == 1
                                    ? 'Upload'
                                    : '-',
                            style: AppTextStyle.body4
                                .setSemiBold()
                                .copyWith(color: AppColors.primary.pr10),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tanggal',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        Text(
                          formatCurren(i.created_at.toString()),
                          style: AppTextStyle.body4.setRegular(),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jam',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        Text(
                          '08.00 WIB',
                          style: AppTextStyle.body4.setRegular(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String formatCurren(String date) {
    DateTime dateTime = DateTime.parse(date);
    // String formattedDate = DateFormat('yyyy/MM/dd').format(dateTime);
    String formattedDateTime = DateFormat('yyyy-MM-dd  HH:mm').format(dateTime);

    return formattedDateTime;
  }
}
