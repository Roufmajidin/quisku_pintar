import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';

import 'garis-garis.dart';

// ignore: camel_case_types, must_be_immutable
class PresensiWidget extends StatelessWidget {
  Pelajaran data;

  PresensiWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'Absensi ',
          //   style: AppTextStyle.body3.setSemiBold(),
          // ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 14,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.primary.pr10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'P${index + 1}',
                      style: AppTextStyle.body3
                          .setSemiBold()
                          .copyWith(color: AppColors.neutral.ne01),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          // Detail Acara

          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            child: Container(
              height: 200,
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
                            'Pertemuan 1',
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
                          'Materi',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        Text(
                          data.guru,
                          style: AppTextStyle.body4.setRegular().copyWith(
                              color: AppColors.secondary.scGreen.sc11),
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
                          '11 April 2023',
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
          ),
       
        ],
      ),
    );
  }
}
