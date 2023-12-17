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
import 'package:shimmer/shimmer.dart';
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
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ShimmerLoadWidget(widget: widget, state: state),
          );
        }
        return Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // pengingat absens
              Pengingat(state: state, shimmer: false),
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
                                DateTime.now().day &&
                            presensi?.updated_at != null) {
                          showDialog(
                            // barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return showD('sudah', index + 1, context);
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
                              return showD('belum', index + 1, context);
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
                              return showD('sudah', index + 1, context);
                            },
                          );
                        } else if (presensi?.created_at.day !=
                                DateTime.now().day &&
                            presensi?.updated_at == null) {
                          showDialog(
                            // barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return showD('lewat', index + 1, context);
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

              CardWidget(widget: widget),
            ],
          ),
        );
      },
    );
  }
}
