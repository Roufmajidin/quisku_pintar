// TODO :: tinggal tambahin semua image (cam) jadiin pdf
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/pengumpulan_tugas/widget/button_widget.dart';
import 'package:image_picker/image_picker.dart';

class PengumpulanTugasView extends StatefulWidget {
  Presensi presensi;
  Pelajaran pel;

  PengumpulanTugasView({super.key, required this.presensi, required this.pel});

  @override
  State<PengumpulanTugasView> createState() => _PengumpulanTugasViewState();
}

class _PengumpulanTugasViewState extends State<PengumpulanTugasView> {
  // take pciture fungsi
  List<File> _images = [];
  bool _filled = false;
  bool _load = false;

  // late File _image;
  final picker = ImagePicker();

  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() async {
      _load = true;
      Future.delayed(const Duration(seconds: 3));

      if (pickedFile != null) {
        _images.add(File(pickedFile.path));
        _load = false;
        _filled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_images.isEmpty) {
      setState(() {
        _filled = false;
      });
    }
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
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
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
                      // _image == null
                      //     ?
                      SizedBox(
                        width: size.width,
                        height: 300,
                        child: GridView.builder(
                          shrinkWrap: false,
                          itemCount: _images.length == 0 ? 1 : _images.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent:
                                      _images.length == 1 ? 220 : 120,
                                  crossAxisCount: _images.length == 1 ? 1 : 2,
                                  childAspectRatio: 0.5,
                                  mainAxisSpacing: 4.0,
                                  crossAxisSpacing: 4.0),
                          primary: false,
                          itemBuilder: (context, index) {
                            if (index < _images.length) {
                              // timpa jika ada
                              return Stack(
                                alignment: Alignment.center,
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // hapus
                                          log('hapus');
                                          setState(() {
                                            _images.removeAt(index);
                                            _filled = true;
                                          });
                                        },
                                        child: Container(
                                          height:
                                              _images.length == 1 ? 200 : 86,
                                          width:
                                              _images.length == 1 ? 400 : 154,
                                          decoration: BoxDecoration(
                                            color: AppColors.neutral.ne03
                                                .withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Image.file(
                                            _images[index],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text('Gambar ${index + 1}',
                                          style:
                                              AppTextStyle.body3.setMedium()),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 86,
                                    width: 154,
                                    child: Center(
                                      child: _load == true
                                          ? CircularProgressIndicator()
                                          : Icon(Icons.delete,
                                              color:
                                                  Colors.red.withOpacity(0.6)),
                                    ),
                                  ),
                                ],
                              );
                            }
                            _filled = false;
                            return Column(
                              children: [
                                Container(
                                  height: 86,
                                  // width: _images.isEmpty == 0 ? 300 : 140,
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
            ])),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(
                isFilledButton: true,
                customWidth: 200,
                label: 'Tambah Gambar',
                tapped: (value) {
                  getImageFromCamera();
                },
              ),
              const SizedBox(width: 8),
              ButtonWidget(
                isFilledButton: _filled,
                customWidth: 90,
                label: 'Kirim',
                tapped: (value) {},
              ),
            ],
          ),
        ));
  }
}
