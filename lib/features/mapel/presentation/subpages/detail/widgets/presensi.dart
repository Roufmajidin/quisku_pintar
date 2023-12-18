import 'dart:developer';

// ignore: unused_import
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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
  final Function(bool) refresh;
  PresensiWidget({super.key, required this.data, required this.refresh});

  @override
  State<PresensiWidget> createState() => _PresensiWidgetState();
}

class _PresensiWidgetState extends State<PresensiWidget> {
  String notify = '';
  String notif(value) {
    notify = value;
    return notify;
  }

  String formatCurren(String date) {
    DateTime dateTime = DateTime.parse(date);
    // String formattedDate = DateFormat('yyyy/MM/dd').format(dateTime);
    String formattedDateTime = DateFormat('yyyy-MM-dd  HH:mm').format(dateTime);

    return formattedDateTime;
  }

  bool load = false;
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
        if (state.statusPost == 300) {
          widget.refresh(true);
        }
        log(load.toString());
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
                              'Jangan lupa absen Pertemuan ${presensi!.pertemuan} ya !'));
                    }
                    if (presensi == null) {
                      sessionColor = Colors.grey[
                          300]!; // Replace this with your desired default color
                    }

                    return Tooltip(
                      // message: presensi?.updated_at.toString(),
                      //  richMessage: InlineSpan,

                      message: presensi?.updated_at == null
                          ? 'Tidak Absen'
                          : formatCurren(presensi!.updated_at.toString()),

                      child: GestureDetector(
                        onTap: () {
                          if (presensi?.pertemuan == null) {
                            log('kosong');
                          } else if (presensi?.created_at.day !=
                                  DateTime.now().day &&
                              presensi?.updated_at != null) {
                            showDialog(
                              // barrierDismissible: false,
                              context: context,
                              builder: (BuildContext ctx) {
                                return showD('sudah', index + 1, ctx,
                                    presensi?.id, context);
                              },
                            );
                          } else if (presensi?.created_at.day ==
                                  DateTime.now().day &&
                              presensi?.updated_at == null) {
                            log(presensi!.pertemuan.toString());

                            log('mau absen pertemuan ${presensi.pertemuan.toString()} ?');
                            // setState(() {});

                            showDialog(
                              // barrierDismissible: false,
                              context: context,
                              builder: (BuildContext ctx) {
                                return AlertDialog(
                                  backgroundColor: AppColors.neutral.ne01,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  // ignore: prefer_const_constructors
                                  insetPadding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 200),
                                  content: Column(
                                    children: [
                                      // ignore: deprecated_member_use_from_same_package
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Assets.icons.iconWarningKonversi
                                          .image(height: 100),

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
                                      Text(
                                        'Anda mau absen pertemuan ${index + 1} ',
                                        // textAlign: TextAlign.center,
                                        style: AppTextStyle.body3,
                                      ),

                                      const SizedBox(
                                        height: 24,
                                      ),

                                      Column(
                                        children: [
                                          // if (load == false)

                                          ButtonWidget(
                                              customWidth: double.infinity,
                                              label: 'Absen',
                                              isFilledButton: true,
                                              // load: load,
                                              tapped: (value) {
                                                // log('ok');
                                                context.read<MapelBloc>().add(
                                                    PresentSekarang(
                                                        idAbsen: presensi?.id));
                                                setState(() {
                                                  widget.refresh(true);
                                                });
                                                if (value == true) {
                                                  Navigator.pop(ctx);
                                                }
                                              }),

                                          ButtonWidget(
                                            customWidth: double.infinity,
                                            label: 'Batal',
                                            isFilledButton: false,
                                            tapped: (value) {
                                              Navigator.pop(ctx);
                                            },
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                );
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
                              builder: (BuildContext ctx) {
                                return showD('sudah', index + 1, ctx,
                                    presensi?.id, context);
                              },
                            );
                          } else if (presensi?.created_at.day !=
                                  DateTime.now().day &&
                              presensi?.updated_at == null) {
                            showDialog(
                              // barrierDismissible: false,
                              context: context,
                              builder: (BuildContext ctx) {
                                return showD('lewat', index + 1, ctx,
                                    presensi?.id, context);
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
