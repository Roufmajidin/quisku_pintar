import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class DetailNilaiView extends StatefulWidget {
  final String pelatihan;
  const DetailNilaiView({super.key, required this.pelatihan});

  @override
  State<DetailNilaiView> createState() => _DetailNilaiViewState();
}

class _DetailNilaiViewState extends State<DetailNilaiView> {
  List<Map<String, dynamic>> data = [
    {
      "items1": [
        {
          "pelatihan": "Waktu Menonton Modul Video",
          "menit": "200 Menit",
        },
        {
          "pelatihan": "Waktu Membaca Jurnal",
          "menit": "30 menit",
        },
        {
          "pelatihan": "Instalasi",
          "menit": "40 Menit",
        },
        {
          "pelatihan": "Total Menit Menonton",
          "menit": "20 menit",
        },
        {
          "pelatihan": "Waktu Membaca Jurnal",
          "menit": "30 Menit",
        },
        {
          "pelatihan": "Waktu Membaca Artikel",
          "menit": "20 menit",
        },
        {
          "pelatihan": "Kolaborasi Kelompok",
          "menit": "20 Menit",
        },
        {
          "pelatihan": "Quiz",
          "menit": "200 Menit",
        },
        {
          "pelatihan": "Ujian",
          "menit": "120 Menit",
        },
        {
          "pelatihan": "Live Mentoring",
          "menit": "120 Menit",
        },
        {
          "pelatihan": "SETARA SKS",
          "menit": "20 Menit",
        },
      ],
      "items2": [
        {
          "pelatihan": "Jumlah Modul Video",
          "menit": "4 Video",
        },
        {
          "pelatihan": "Jumlah Jurnal",
          "menit": "5 Jurnal",
        },
        {
          "pelatihan": "Instalasi",
          "menit": "40 Menit",
        },
        {
          "pelatihan": "Penugasan Individu",
          "menit": "12 TUgas",
        },
        {
          "pelatihan": "Penugasan Kelompok",
          "menit": "2 Tugas",
        },
        {
          "pelatihan": "Jumlah Artikel",
          "menit": "3 Artikel",
        },
        {
          "pelatihan": "Quiz",
          "menit": "14 Quiz",
        },
        {
          "pelatihan": "Ujian",
          "menit": "2 Ujian",
        },
        {
          "pelatihan": "Live Mentoring",
          "menit": "2 Live Mentoring",
        },
      ],
      "items3": [
        {
          "rincian": "Quiz",
          "nilai": "85",
        },
        {
          "rincian": "Ujian",
          "nilai": "85",
        },
        {
          "rincian": "Penugasan Individu",
          "nilai": "88",
        },
        {
          "rincian": "Penugasan Kelompok",
          "nilai": "90",
        },
        {
          "rincian": "Tugas Tengah Periode Semester",
          "nilai": "95",
        },
        {
          "rincian": "Tugas Akhir Periode",
          "nilai": "95",
        },
      ]
    },
  ];

  // double calculateTotalScore(List<Map<String, dynamic>> items1) {
  //   double totalScore = 0;
  //   for (var item in items1) {
  //     totalScore += double.parse(item["menit"]);
  //   }
  //   return totalScore / items1.length;
  // }

  Color getContainerColor(int index) {
    // Mengembalikan warna putih jika indeks genap, dan abu-abu jika indeks ganjil
    return index.isEven ? Colors.white : AppColors.neutral.ne13;
  }

  @override
  Widget build(BuildContext context) {
    // double totalAverageScore = 0;
    // for (var batchData in data) {
    //   totalAverageScore += calculateTotalScore(batchData["items1"]);
    // }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail Nilai',
          style: AppTextStyle.body3.setSemiBold(),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 16,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(
                  16,
                  24,
                  16,
                  40,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  var items1 = data[index]["items1"];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 84,
                            decoration: BoxDecoration(
                                color: AppColors.primary.pr10,
                                border: const Border(
                                    bottom: BorderSide(color: Colors.white))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.pelatihan,
                                  style: AppTextStyle.body3
                                      .setMedium()
                                      .copyWith(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Start : 2023/09/23 - End : 2023/12/11',
                                  style: AppTextStyle.body4
                                      .setRegular()
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 37,
                            decoration: BoxDecoration(
                                color: AppColors.primary.pr10,
                                border: const Border(
                                    bottom: BorderSide(color: Colors.white))),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 190,
                                    height: 70,
                                    child: Center(
                                        child: Text(
                                      'Pelatihan',
                                      style: AppTextStyle.body3
                                          .setMedium()
                                          .copyWith(color: Colors.white),
                                    ))),
                                Expanded(
                                  child: SizedBox(
                                      width: 76,
                                      height: 70,
                                      child: Center(
                                          child: Text(
                                        'Menit',
                                        style: AppTextStyle.body3
                                            .setMedium()
                                            .copyWith(color: Colors.white),
                                      ))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: items1.asMap().entries.map<Widget>((entry) {
                          var item = entry.value;
                          var itemIndex = entry.key;

                          return Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 190,
                                height: 37,
                                color: getContainerColor(itemIndex),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    item["pelatihan"],
                                    style: AppTextStyle.body4
                                        .setRegular()
                                        .copyWith(
                                            color: AppColors.neutral.ne12),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 76,
                                  height: 37,
                                  color: getContainerColor(itemIndex),
                                  child: Center(
                                    child: Text(
                                      item["menit"],
                                      style: AppTextStyle.body4
                                          .setRegular()
                                          .copyWith(
                                              color: AppColors.neutral.ne12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                      Container(
                        width: double.infinity,
                        height: 37,
                        decoration: BoxDecoration(
                            color: AppColors.primary.pr11,
                            border: const Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: Row(
                          children: [
                            SizedBox(
                                width: 190,
                                height: 70,
                                child: Center(
                                    child: Text(
                                  'Total menit',
                                  style: AppTextStyle.body3
                                      .setMedium()
                                      .copyWith(color: Colors.white),
                                ))),
                            Expanded(
                              child: SizedBox(
                                  width: 76,
                                  height: 70,
                                  child: Center(
                                      child: Text(
                                    '900 Menit',
                                    // totalAverageScore.toStringAsFixed(0),
                                    style: AppTextStyle.body3
                                        .setMedium()
                                        .copyWith(color: Colors.white),
                                  ))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55,
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(
                  16,
                  24,
                  16,
                  40,
                ),
                itemCount: data.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var items1 = data[index]["items2"];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 37,
                            decoration: BoxDecoration(
                                color: AppColors.primary.pr10,
                                border: const Border(
                                    bottom: BorderSide(color: Colors.white))),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 190,
                                    height: 70,
                                    child: Center(
                                        child: Text(
                                      'Pelatihan',
                                      style: AppTextStyle.body3
                                          .setMedium()
                                          .copyWith(color: Colors.white),
                                    ))),
                                Expanded(
                                  child: SizedBox(
                                      width: 76,
                                      height: 70,
                                      child: Center(
                                          child: Text(
                                        'Menit',
                                        style: AppTextStyle.body3
                                            .setMedium()
                                            .copyWith(color: Colors.white),
                                      ))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: items1.asMap().entries.map<Widget>((entry) {
                          var item = entry.value;
                          var itemIndex = entry.key;

                          return Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 190,
                                height: 37,
                                color: getContainerColor(itemIndex),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    item["pelatihan"],
                                    style: AppTextStyle.body4
                                        .setRegular()
                                        .copyWith(
                                            color: AppColors.neutral.ne12),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 76,
                                  height: 37,
                                  color: getContainerColor(itemIndex),
                                  child: Center(
                                    child: Text(
                                      item["menit"],
                                      style: AppTextStyle.body4
                                          .setRegular()
                                          .copyWith(
                                              color: AppColors.neutral.ne12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                      Container(
                        width: double.infinity,
                        height: 37,
                        decoration: BoxDecoration(
                            color: AppColors.primary.pr11,
                            border: const Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: Row(
                          children: [
                            SizedBox(
                                width: 190,
                                height: 70,
                                child: Center(
                                    child: Text(
                                  'Total menit',
                                  style: AppTextStyle.body3
                                      .setMedium()
                                      .copyWith(color: Colors.white),
                                ))),
                            Expanded(
                              child: SizedBox(
                                  width: 76,
                                  height: 70,
                                  child: Center(
                                      child: Text(
                                    '120 Menit',
                                    // totalAverageScore.toStringAsFixed(0),
                                    style: AppTextStyle.body3
                                        .setMedium()
                                        .copyWith(color: Colors.white),
                                  ))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(
                  16,
                  24,
                  16,
                  40,
                ),
                itemCount: data.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var items1 = data[index]["items3"];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 37,
                            decoration: BoxDecoration(
                                color: AppColors.primary.pr10,
                                border: const Border(
                                    bottom: BorderSide(color: Colors.white))),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 190,
                                    height: 70,
                                    child: Center(
                                        child: Text(
                                      'Pelatihan',
                                      style: AppTextStyle.body3
                                          .setMedium()
                                          .copyWith(color: Colors.white),
                                    ))),
                                Expanded(
                                  child: SizedBox(
                                      width: 76,
                                      height: 70,
                                      child: Center(
                                          child: Text(
                                        'Menit',
                                        style: AppTextStyle.body3
                                            .setMedium()
                                            .copyWith(color: Colors.white),
                                      ))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: items1.asMap().entries.map<Widget>((entry) {
                          var item = entry.value;
                          var itemIndex = entry.key;

                          return Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 190,
                                height: 37,
                                color: getContainerColor(itemIndex),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    item["rincian"],
                                    style: AppTextStyle.body4
                                        .setRegular()
                                        .copyWith(
                                            color: AppColors.neutral.ne12),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 76,
                                  height: 37,
                                  color: getContainerColor(itemIndex),
                                  child: Center(
                                    child: Text(
                                      item["nilai"],
                                      style: AppTextStyle.body4
                                          .setRegular()
                                          .copyWith(
                                              color: AppColors.neutral.ne12),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                      Container(
                        width: double.infinity,
                        height: 37,
                        decoration: BoxDecoration(
                            color: AppColors.primary.pr11,
                            border: const Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: Row(
                          children: [
                            SizedBox(
                                width: 190,
                                height: 70,
                                child: Center(
                                    child: Text(
                                  'Total Nilai',
                                  style: AppTextStyle.body3
                                      .setMedium()
                                      .copyWith(color: Colors.white),
                                ))),
                            Expanded(
                              child: SizedBox(
                                  width: 76,
                                  height: 70,
                                  child: Center(
                                      child: Text(
                                    '88.33',
                                    // totalAverageScore.toStringAsFixed(0),
                                    style: AppTextStyle.body3
                                        .setMedium()
                                        .copyWith(color: Colors.white),
                                  ))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const Padding(
      //   padding: EdgeInsets.fromLTRB(16, 24, 16, 40),
      //   child: UnduhTranskip(),
      // ),
    );
  }
}
