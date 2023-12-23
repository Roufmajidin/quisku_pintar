import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart';

// ignore: must_be_immutable
class UjianButton extends StatelessWidget {
  Ujian ujian;
  int ujianId;
  UjianButton({Key? key, required this.ujian, required this.ujianId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
      child: BuildButtonWidget(
          ujian: ujian,
          title: 'Mulai',
          callBack: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertWidget(ujian: ujian, ujianId: ujianId);
              },
            );
          }),
    );
  }
}

// ignore: must_be_immutable
class BuildButtonWidget extends StatelessWidget {
  String title;
  final Ujian ujian;
  final Function callBack;

  BuildButtonWidget(
      {super.key,
      required this.ujian,
      required this.title,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ujian.status == "Belum Mengerjakan"
            ? Colors.blue
            : AppColors.neutral.ne02,
      ),
      child: ElevatedButton(
        onPressed: () {
          callBack();
          if (ujian.status == 'Belum Mengerjakan') {}
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Text(
            ujian.status == "Belum Mengerjakan" ? 'Mulai Ujian' : "Sudah Ujian",
            style: AppTextStyle.body2
                .setMedium()
                .copyWith(color: AppColors.neutral.ne01),
          ),
        ),
      ),
    );
  }
}

class AlertWidget extends StatelessWidget {
  const AlertWidget({
    super.key,
    required this.ujian,
    required this.ujianId,
  });

  final int ujianId;
  final Ujian ujian;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.neutral.ne01,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      insetPadding: EdgeInsets.symmetric(
          horizontal: 50, vertical: MediaQuery.of(context).size.height * 0.2),
      content: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Image.network(
            ujian.images,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Yakin Ingin memulai Ujian ${ujian.mapel} ?',
            textAlign: TextAlign.center,
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Klik Mulai jika Iya',
            style: AppTextStyle.body3.setRegular(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          BuildButtonWidget(
              ujian: ujian,
              title: 'Mulai',
              callBack: () {
                // Navigator.pop(context);
                log(ujian.mapel_id.toString());
                // question page
                context.router
                    .push(QuestionRoute(id: ujian.mapel_id, ujianId: ujianId));
              })
        ],
      ),
    );
  }
}
