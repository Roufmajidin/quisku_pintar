import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/widgets/widget.dart';

class CardWidget extends StatelessWidget {
  List<Presensi> data;

  CardWidget({
    super.key,
    required this.widget,
    required this.data,
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
                            log(i.id.toString());
                          },
                          child: Text(
                            'Lihat Materi',
                            style: AppTextStyle.body4.setRegular().copyWith(
                                color: AppColors.secondary.scGreen.sc11),
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
