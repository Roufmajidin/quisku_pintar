import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/pengumpulan_tugas/widget/button_widget.dart';

class PengumpulanTugasView extends StatefulWidget {
  Presensi presensi;
  Pelajaran pel;

  PengumpulanTugasView({super.key, required this.presensi, required this.pel});

  @override
  State<PengumpulanTugasView> createState() => _PengumpulanTugasViewState();
}

class _PengumpulanTugasViewState extends State<PengumpulanTugasView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Pengumpulan Tugas',
            style: AppTextStyle.body3.setSemiBold(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child:
                                Assets.images.profileDetail.image(height: 60),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.pel.guru,
                                style: AppTextStyle.body3.setSemiBold(),
                              ),
                              Text(
                                widget.pel.mapel,
                                style: AppTextStyle.body3
                                    .setMedium()
                                    .copyWith(color: AppColors.primary.pr10),
                              )
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),
                      // pr soal
                      Text(
                        'silahkan upload pr kalian dengan menekan tombol dibawah ya',
                        style: AppTextStyle.body3.setRegular(),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Waktu',
                            style: AppTextStyle.body3
                                .setSemiBold()
                                .copyWith(color: AppColors.primary.pr10),
                          ),
                          Text(
                            'Deadline : Minggu Depan',
                            style: AppTextStyle.body3
                                .setRegular()
                                .copyWith(color: AppColors.danger.dng05),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: size.width,
                        height: 300,
                        child: GridView.builder(
                          shrinkWrap: false,
                          itemCount: 4,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 120,
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.5,
                                  mainAxisSpacing: 4.0,
                                  crossAxisSpacing: 4.0),
                          primary: false,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 86,
                                  width: 154,
                                  decoration: BoxDecoration(
                                      color: AppColors.neutral.ne03
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Center(
                                      child: Icon(
                                    Icons.picture_as_pdf,
                                    color: Colors.red,
                                  )),
                                ),
                                Text('Gambar ${index + 1}',
                                    style: AppTextStyle.body3.setMedium()),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: ButtonWidget(
              //     customWidth: size.width,
              //     isFilledButton: false,
              //     label: 'Tambah Image',
              //     tapped: (value) {},
              //   ),
              // ),

              // Container(
              //   padding: const EdgeInsets.all(10),
              //   width: size.width,
              //   decoration: BoxDecoration(
              //     color: AppColors.primary.pr10.withOpacity(0.2),
              //   ),
              //   child: Text('Tugas', style: AppTextStyle.body3.setSemiBold()),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(16),
              //   child: Row(
              //     children: [
              //       const Padding(
              //         padding: EdgeInsets.only(right: 6),
              //         child: Icon(Icons.picture_as_pdf, size: 12),
              //       ),
              //       Text('Tugas pertemuan 1.pdf',
              //           style: AppTextStyle.body4.setSemiBold()),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(
                isFilledButton: true,
                customWidth: 200,
                label: 'Tambah Gambar',
                tapped: (value) {},
              ),
              const SizedBox(width: 8),
              ButtonWidget(
                isFilledButton: true,
                customWidth: 90,
                label: 'Kirim',
                tapped: (value) {},
              ),
            ],
          ),
        ));
  }
}
