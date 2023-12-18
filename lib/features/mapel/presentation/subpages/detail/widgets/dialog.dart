import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';

import 'button_widget.dart';

showD(String v, index, ctx, idAbsen, context) {
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
                  tapped: (value) {
                    // log('ok');
                    context
                        .read<MapelBloc>()
                        .add(PresentSekarang(idAbsen: idAbsen?.id));
                  }),
            ButtonWidget(
              customWidth: double.infinity,
              label: v == 'lewat' || v == 'sudah' ? 'Kembali' : 'Batal',
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
}
