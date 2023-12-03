import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/widgets/garis-garis.dart';

class contentInformasi extends StatelessWidget {
  const contentInformasi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Detail Acara
          Text(
            'Informasi Acara',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 16,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            child: Container(
              height: 180,
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
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 37,
                      child: Stack(
                        children: [
                          Text(
                            'Pemesanan Tiket',
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
                          'Pemesanan Tiket',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        Text(
                          'Online',
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
                    const SizedBox(
                      height: 16,
                    ),
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
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            child: Container(
              height: 180,
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
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 37,
                      child: Stack(
                        children: [
                          Text(
                            'Acara',
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
                          'Lokasi Acara',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        Text(
                          'Online',
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
                          '5 April 2023',
                          style: AppTextStyle.body4.setRegular(),
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
                          'Jam',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        Text(
                          '08.00 WIB',
                          style: AppTextStyle.body4.setRegular(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
