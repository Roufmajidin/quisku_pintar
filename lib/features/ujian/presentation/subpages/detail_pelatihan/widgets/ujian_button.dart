import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart';

// ignore: must_be_immutable
class UjianButton extends StatelessWidget {
  Ujian ujian;
  UjianButton({Key? key, required this.ujian}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 40),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ujian.status == "Belum Mengerjakan"
              ? Colors.blue
              : AppColors.neutral.ne02,
        ),
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: AppColors.neutral.ne01,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  insetPadding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: MediaQuery.of(context).size.height * 0.23),
                  content: Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Assets.icons.verifiedDetail.svg(),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Kamu Berhasil Mendaftar!',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.body3.setSemiBold(),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Kamu telah mendaftar webinar di hari Senin, 5 April 2023 Pukul 08.00 WIB',
                        style: AppTextStyle.body3.setRegular(),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: double.infinity,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                            child: Text(
                              'Selesai',
                              style: AppTextStyle.body3
                                  .setMedium()
                                  .copyWith(color: AppColors.neutral.ne01),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            child: Text(
              ujian.status == "Belum Mengerjakan"
                  ? 'Mulai Ujian'
                  : "Sudah Ujian",
              style: AppTextStyle.body2
                  .setMedium()
                  .copyWith(color: AppColors.neutral.ne01),
            ),
          ),
        ),
      ),
    );
  }
}
