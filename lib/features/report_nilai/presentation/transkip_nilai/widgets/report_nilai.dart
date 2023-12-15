import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/report_nilai/bloc/nilai_bloc.dart';

import '../../../data/models/report_models.dart';
import 'header_container.dart';
import 'widgets.dart';

class ReportNilai extends StatefulWidget {
  const ReportNilai({
    super.key,
  });

  @override
  State<ReportNilai> createState() => _ReportNilaiState();
}

class _ReportNilaiState extends State<ReportNilai> {
  double totalScore = 0;
  double totalScorepas = 0;

  String calculateGrade(int score) {
    if (score >= 90) {
      return 'A';
    } else if (score >= 80) {
      return 'B';
    } else if (score >= 70) {
      return 'C';
    } else if (score >= 60) {
      return 'D';
    } else {
      return 'F';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NilaiBloc, NilaiState>(
      builder: (context, state) {
        var datas = state.reportData;

        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: datas.length,
              itemBuilder: (BuildContext context, int index) {
                var items = datas[index];
                var data = datas[index].data;
                var pas = data['PAS'];
                var pts = data['PTS'];
                // var examDataList = data.data['keterangan'];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        HeaderContainer(
                          child: Center(
                            child: Text(
                              items.keterangan == "PTS"
                                  ? "Penilaian Tengah Semester (PTS)"
                                  : "Penilaian Akhir Semester (PAS)",
                              style: AppTextStyle.body3
                                  .setMedium()
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        HeaderContainer(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BuildRow(label: "Mapel", customeWidth: 150),
                              BuildRow(label: "Nilai"),
                              BuildRow(label: "Grade"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //
                    Column(
                      children: pts != null
                          ? List.generate(pts.length, (s) {
                              Color backgroundColor = s % 2 == 0
                                  ? Color.fromARGB(179, 244, 244, 244)
                                  : Colors.white;

                              var d = pts[s];
                              int n = 0;
                              for (var i in pts) {
                                // log(i.nilai)
                                n += i.nilai;
                                totalScore = n.toDouble();
                              }

                              log("rata rata $n");
                              return Container(
                                color: backgroundColor,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BuildRowField(
                                      item: d.mapel,
                                      customeWidth: 150,
                                    ),
                                    BuildRowField(
                                      item: d.nilai.toString(),
                                      customeWidth: 40,
                                    ),
                                    BuildRowField(
                                      item: d.nilai == 0
                                          ? ''
                                          : calculateGrade(d.nilai),
                                      customeWidth: 70,
                                    ),
                                  ],
                                ),
                              );

                              // Your code here
                            })
                          : [],
                    ),

                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: pas != null
                            ? List.generate(pas.length, (s) {
                                Color backgroundColor = s % 2 == 0
                                    ? Color.fromARGB(179, 244, 244, 244)
                                    : Colors.white;
                                var d = pas[s];
                                int n = 0;
                                for (var i in pas) {
                                  n += i.nilai;
                                  totalScorepas = n.toDouble();
                                }
                                return Container(
                                  color: backgroundColor,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      BuildRowField(
                                        item: d.mapel,
                                        customeWidth: 150,
                                      ),
                                      BuildRowField(
                                        item: d.nilai.toString(),
                                        customeWidth: 40,
                                      ),
                                      BuildRowField(
                                        item: d.nilai == 0
                                            ? ''
                                            : calculateGrade(d.nilai),
                                        customeWidth: 70,
                                      ),
                                    ],
                                  ),
                                );
                                // Your code here
                              })
                            : []),
                    items.keterangan == "PTS"
                        ? BuildFinalScore(
                            value: totalScore / pts!.length, title: 'Rata-Rata')
                        : BuildFinalScore(
                            value: totalScorepas / pas!.length,
                            title: 'Rata-Rata'),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
