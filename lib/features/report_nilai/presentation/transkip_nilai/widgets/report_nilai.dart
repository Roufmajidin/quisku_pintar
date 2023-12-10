import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

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
  List<Map<String, dynamic>> data = [
    {
      "items": [
        {
          "pelatihan":
              "Pertemuan 1 - Pelatihan Keterampilan Komunikasi - 001002003 ",
          "skor": "88",
          "grade": "A",
        },
        {
          "pelatihan":
              "Pertemuan 1 - Pelatihan Keterampilan Komunikasi 001002003",
          "skor": "82",
          "grade": "B",
        },
        {
          "pelatihan":
              "Pertemuan 1 - Pelatihan Keterampilan Komunikasi 001002003",
          "skor": "80",
          "grade": "B",
        },
        {
          "pelatihan":
              "Pertemuan 1 - Pelatihan Keterampilan Komunikasi 001002003",
          "skor": "78",
          "grade": "B",
        },
      ]
    }
  ];

  double calculateTotalScore(List<Map<String, dynamic>> items) {
    double totalScore = 0;
    for (var item in items) {
      totalScore += double.parse(item["skor"]);
    }
    return totalScore / items.length;
  }

  @override
  Widget build(BuildContext context) {
    double totalAverageScore = 0;
    for (var batchData in data) {
      totalAverageScore += calculateTotalScore(batchData["items"]);
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            var items = data[index]["items"];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    HeaderContainer(
                      child: Center(
                        child: Text(
                          "UTS",
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
                Column(
                  children: items.asMap().entries.map<Widget>((entry) {
                    var item = entry.value;
                    // var itemIndex = entry.key;

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildRowField(
                            item: item['pelatihan'], customeWidth: 170),
                        BuildRowField(item: item['grade']),
                        BuildRowField(item: item['skor'])
                      ],
                    );
                  }).toList(),
                ),
                BuildFinalScore(
                    value: totalAverageScore.toStringAsFixed(0),
                    title: 'Poin Akhir'),
              ],
            );
          },
        ),
      ),
    );
  }
}
