import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'card_widget.dart';
import 'garis-garis.dart';
import 'pengingat.dart';
import 'presensi.dart';

class ShimmerLoadWidget extends StatelessWidget {
  const ShimmerLoadWidget({
    super.key,
    required this.widget,
    required this.state,
    required this.type,
  });

  final PresensiWidget widget;
  final MapelState state;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      loop: 3,
      // enabled: true,
      period: const Duration(seconds: 4),
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          Pengingat(state: state, shimmer: true),
          const SizedBox(
            height: 16,
          ),
          if (type == 'presensi')
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
                        color: Colors.grey,
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
          if (type == 'presensi') const SizedBox(height: 16),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                // var i = data[index];
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
                                  'Pertemuan ',
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
                                  // log(i.id.toString());
                                },
                                child: Text(
                                  'Lihat Materi',
                                  style: AppTextStyle.body4
                                      .setRegular()
                                      .copyWith(
                                          color:
                                              AppColors.secondary.scGreen.sc11),
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
                                '______',
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
          )
        ],
      ),
    );
  }
}
