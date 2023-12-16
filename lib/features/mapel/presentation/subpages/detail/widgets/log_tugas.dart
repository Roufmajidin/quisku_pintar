import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'widget.dart';

// ignore: must_be_immutable
class LogTugas extends StatelessWidget {
  Pelajaran data;

  LogTugas({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderContainer(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildRow(
                  label: "Tanggal",
                ),
                BuildRow(label: "Pertemuan", customeWidth: 120),
                BuildRow(label: "Grade"),
              ],
            ),
          ),
          Container(
            color: AppColors.neutral.ne01,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildRowField(
                  item: '12 Feb 2023',
                  customeWidth: 100,
                ),
                BuildRowField(
                  item: 'Pertemuan 1',
                  customeWidth: 120,
                ),
                BuildRowField(
                  item: 'Open',
                  customeWidth: 70,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
