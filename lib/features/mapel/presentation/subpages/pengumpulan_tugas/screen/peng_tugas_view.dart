// TODO :: tinggal tambahin semua image (cam) jadiin pdf (done)
// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/screen/detail_mapel_page.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/pengumpulan_tugas/widget/button_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:quisku_pintar/features/mapel/presentation/subpages/pengumpulan_tugas/widget/loading.dart';

// ignore: must_be_immutable
class PengumpulanTugasView extends StatefulWidget {
  Presensi presensi;
  Pelajaran pel;

  PengumpulanTugasView({super.key, required this.presensi, required this.pel});

  @override
  State<PengumpulanTugasView> createState() => _PengumpulanTugasViewState();
}

class _PengumpulanTugasViewState extends State<PengumpulanTugasView> {
  // take pciture fungsi
  // File file
  List<File> _images = [];
  bool _filled = false;
  bool _load = false;
  double loadingPercentage = 0.2;
  // late File _image;
  final picker = ImagePicker();
  String path = '';

  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      _load = true;
      Future.delayed(const Duration(seconds: 3));

      if (pickedFile != null) {
        _images.add(File(pickedFile.path));
        _load = false;
        _filled = true;
      }
    });
  }

  void simulateLoading() {
    Future.delayed(const Duration(seconds: 2), () {
      loadingPercentage = 1.0;
    });
  }

// generate pdf nya
  Future _generatePdf() async {
    // setState(() {
    _load = true;
    simulateLoading();
    // });
    final pdf = pw.Document();

    for (final imageFile in _images) {
      final image = pw.MemoryImage(File(imageFile.path).readAsBytesSync());

      pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Center(
            child: pw.Image(image),
          );
        },
      ));
    }

    final directory = await getExternalStorageDirectory();
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final fileName = 'pdf_file_$timestamp.pdf';
    final filePath = '${directory?.path}/$fileName';

    final file = File(filePath);
    log('file path $filePath');
    await file.writeAsBytes(await pdf.save());
    path = filePath;
    // return filePath;
  }

  @override
  Widget build(BuildContext context) {
    if (_images.isEmpty) {
      // setState(() {
      _filled = false;
      // });
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
        body: BlocBuilder<MapelBloc, MapelState>(
          builder: (context, state) {
            // ini harusnya postStatus tapi gakpapae deh

            return SingleChildScrollView(
                child: Column(children: [
              const SizedBox(height: 16),
              Stack(
                children: [
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
                                child: Assets.images.profileDetail
                                    .image(height: 60),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.pel.guru,
                                    style: AppTextStyle.body3.setSemiBold(),
                                  ),
                                  Text(
                                    '${widget.pel.mapel} Pertemuan ${widget.presensi.pertemuan}',
                                    style: AppTextStyle.body3
                                        .setMedium()
                                        .copyWith(
                                            color: AppColors.primary.pr10),
                                  )
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),
                          // pr soal

                          Text(
                            widget.presensi.status != 0
                                ? 'Kamu Sudah Mengumpulkan tugas pertemuan ${widget.presensi.pertemuan}'
                                : 'silahkan upload pr kalian dengan menekan tombol dibawah ya',
                            style: AppTextStyle.body3.setRegular(),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (widget.presensi.status == 0)
                                Text(
                                  'Waktu',
                                  style: AppTextStyle.body3
                                      .setSemiBold()
                                      .copyWith(color: AppColors.primary.pr10),
                                ),
                              Text(
                                widget.presensi.status != 0
                                    ? 'Pengumpulan : ${widget.presensi.updated_at}'
                                    : 'Deadline : Minggu Depan',
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
                            height: widget.presensi.status == 0 ? 300 : 500,
                            child: GridView.builder(
                              shrinkWrap: false,
                              itemCount:
                                  _images.isEmpty ? 1 : _images.length + 1,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent:
                                          _images.isEmpty ? 220 : 120,
                                      crossAxisCount: _images.isEmpty ? 1 : 2,
                                      childAspectRatio: 0.5,
                                      mainAxisSpacing: 4.0,
                                      crossAxisSpacing: 4.0),
                              primary: false,
                              itemBuilder: (context, index) {
                                if (index < _images.length) {
                                  // timpa jika ada
                                  return Stack(
                                    // alignment: Alignment.center,
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
                                                  _images.isEmpty ? 200 : 86,
                                              width:
                                                  _images.isEmpty ? 400 : 200,
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
                                          const SizedBox(height: 6),
                                          Text('Gambar ${index + 1}',
                                              style: AppTextStyle.body3
                                                  .setMedium()),
                                        ],
                                      ),
                                      Center(
                                        child:
                                            // ? const CircularProgressIndicator()
                                            // :
                                            Icon(Icons.delete,
                                                color: Colors.red
                                                    .withOpacity(0.6)),
                                      ),
                                    ],
                                  );
                                }

                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (widget.presensi.status == 1) {
                                          context.pushRoute(ReadPdfRoute(
                                              pdfLink:
                                                  widget.presensi.file_tugas));
                                        } else {
                                          getImageFromCamera();
                                        }
                                      },
                                      child: Container(
                                        height: widget.presensi.status == 1
                                            ? 150
                                            : 80,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            color: AppColors.neutral.ne03
                                                .withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Center(
                                            child: Icon(
                                          widget.presensi.status == 1
                                              ? Icons.picture_as_pdf_outlined
                                              : Icons.add_a_photo,
                                          color: Colors.blue,
                                        )),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                        widget.presensi.status == 0
                                            ? 'Tambah Foto'
                                            : 'Tugas Pertemuan ${widget.presensi.pertemuan}',
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

                  // ignore: unrelated_type_equality_checks
                  if (state.fetchDataProses == FetchStatus.loading)
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white54,
                      child: const Center(
                          child: CircularProgressIndicator.adaptive(
                        backgroundColor: Colors.white,
                      )),
                    ),
                ],
              ),
            ]));
          },
        ),
        bottomNavigationBar: widget.presensi.status == 1
            ? const SizedBox()
            : BlocListener<MapelBloc, MapelState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state.fetchDataProses == FetchStatus.success) {
                    context.router.pushAndPopUntil(
                      DetailMapelRoute(data: widget.pel),
                      predicate: (route) => true,
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ButtonWidget(
                    isFilledButton: _filled,
                    customWidth: 200,
                    label: 'Kirim',
                    tapped: (value) async {
                      await _generatePdf();
                      // ignore: use_build_context_synchronously
                      context.read<MapelBloc>().add(PostTugas(
                          idAbsen: widget.presensi.id, file: File(path)));
                      // await
                    },
                  ),
                ),
              ));
  }
}
