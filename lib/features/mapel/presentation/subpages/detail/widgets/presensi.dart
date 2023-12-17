import 'dart:developer';

// ignore: unused_import
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';

import 'widget.dart';

// ignore: camel_case_types, must_be_immutable
class PresensiWidget extends StatefulWidget {
  Pelajaran data;
  PresensiWidget({super.key, required this.data});

  @override
  State<PresensiWidget> createState() => _PresensiWidgetState();
}

class _PresensiWidgetState extends State<PresensiWidget> {
  String notify = '';
  String notif(value) {
    notify = value;
    return notify;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapelBloc, MapelState>(
      builder: (context, state) {
        if (state.fetchDataProses == FetchStatus.loading) {
          return const SizedBox(
            height: 15,
            width: 15,
            // child: CircularProgressIndicator(
            //   color: AppColors.neutral.ne09,
            // ),
          );
        }
        return Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // pengingat absens
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.danger.dng04.withOpacity(0.2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pengingat !',
                          style: AppTextStyle.body2
                              .setSemiBold()
                              .copyWith(color: AppColors.danger.dng04),
                        ),
                      ],
                    ),
                    Text(
                      state.messages,
                      style: AppTextStyle.body3
                          .copyWith(color: AppColors.danger.dng04),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 14,
                  itemBuilder: (context, index) {
                    final dataPresen = state.presensiData;

                    Presensi? presensi;
                    for (var element in dataPresen) {
                      if (element.pertemuan == index + 1) {
                        presensi = element;
                        log('p $presensi');
                        break;
                      }
                    }
                    Color sessionColor =
                        presensi?.updated_at != null ? Colors.blue : Colors.red;
                    if (presensi?.created_at.day == DateTime.now().day) {
                      // notif('');
                      context.read<MapelBloc>().add(GetMessages(
                          messages:
                              'jangan lupa absen Pertemuan  ${presensi!.pertemuan}'));
                    }
                    if (presensi == null) {
                      sessionColor = Colors
                          .grey; // Replace this with your desired default color
                    }

                    return GestureDetector(
                      onTap: () {
                        if (presensi?.pertemuan == null) {
                          log('kosong');
                        } else if (presensi?.created_at.day !=
                            DateTime.now().day) {
                          showDialog(
                            // barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return showD('lewat', index + 1);
                            },
                          );
                        } else if (presensi?.created_at.day ==
                                DateTime.now().day &&
                            presensi?.updated_at == null) {
                          log(presensi!.pertemuan.toString());

                          log('mau absen pertemuan ${presensi.pertemuan.toString()} ?');
                          showDialog(
                            // barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return showD('belum', index + 1);
                            },
                          );
                        } else if (presensi?.created_at.day ==
                                DateTime.now().day &&
                            presensi?.updated_at != null) {
                          log(presensi!.pertemuan.toString());

                          log('mau absen pertemuan ${presensi.pertemuan.toString()} ?');
                          showDialog(
                            // barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return showD('sudah', index + 1);
                            },
                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: sessionColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'P${index + 1}',
                            style: AppTextStyle.body3
                                .setSemiBold()
                                .copyWith(color: AppColors.neutral.ne01),
                          ),
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
                              widget.data.guru,
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
      },
    );
  }

  showD(String v, index) {
    return AlertDialog(
      backgroundColor: AppColors.neutral.ne01,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // ignore: prefer_const_constructors
      insetPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 200),
      content: Column(
        children: [
          // ignore: deprecated_member_use_from_same_package
          const SizedBox(
            height: 16,
          ),
          if (v == "sudah") Assets.icons.selesai1.svg(height: 100),

          if (v == 'belum' || v == 'lewat')
            Assets.icons.iconWarningKonversi.image(height: 100),

          const SizedBox(
            height: 16,
          ),
          Text(
            'Presensi',
            textAlign: TextAlign.center,
            style: AppTextStyle.body2.setSemiBold(),
          ),
          const SizedBox(
            height: 24,
          ),
          if (v == 'belum')
            Text(
              'Anda mau absen pertemuan $index ',
              // textAlign: TextAlign.center,
              style: AppTextStyle.body3,
            ),
          if (v == 'lewat')
            Text(
              'Status absen anda terlewat pada pertemuan $index',
              // textAlign: TextAlign.center,
              style: AppTextStyle.body3,
            ),
          if (v == 'sudah')
            Text(
              'Anda sudah absen pada pertemuan $index',
              // textAlign: TextAlign.center,
              style: AppTextStyle.body3,
            ),
          const SizedBox(
            height: 24,
          ),

          Column(
            children: [
              if (v == 'belum')
                ButtonWidget(
                    customWidth: double.infinity,
                    label: 'Absen',
                    isFilledButton: true,
                    tapped: () {}),
              ButtonWidget(
                customWidth: double.infinity,
                label: v == 'lewat' || v == 'sudah' ? 'Kembali' : 'Batal',
                isFilledButton: false,
                tapped: () {
                  Navigator.pop(context);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
