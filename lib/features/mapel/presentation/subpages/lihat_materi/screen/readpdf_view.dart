import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:quisku_pintar/core/helpers/show_snackbar_helper.dart';
import 'package:quisku_pintar/core/utils/enums.dart';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class ReadPdfView extends StatefulWidget {
  String link;

  ReadPdfView({super.key, required this.link});

  @override
  State<ReadPdfView> createState() => _ReadPdfViewState();
}

class _ReadPdfViewState extends State<ReadPdfView> {
  late String document;
  late String _localFilePath;
  late String _cleaned;
  bool _isLoading = false;
  bool _isFile = false;

  @override
  initState() {
    super.initState();
    _localFilePath = '';
    cleaned();
    log('cl : ${_cleaned}');
    _checkFileLocal();
  }

  cleaned() {
    String? ul = widget.link;

    String cleanedUrl = ul.replaceAll('/', '');
    setState(() {
      _cleaned = cleanedUrl;
    });
  }

  Future<void> _downloadPDF(String pdfUrl) async {
    try {
      setState(() {
        _isLoading = true;
      });
      var response = await http.get(Uri.parse(pdfUrl));

      if (response.statusCode == 200) {
        final appDocDir = await getApplicationDocumentsDirectory();

        String? ul = widget.link;

        String cleanedUrl = ul.replaceAll('/', '');

        String? fileName =
            response.headers['content-disposition']?.split('filename=')[1];
        fileName = fileName?.replaceAll('"', '') ?? cleanedUrl;

        final localFilePath = '${appDocDir.path}/$fileName';
        File file = File(localFilePath);
        await file.writeAsBytes(response.bodyBytes);
        setState(() {
          _localFilePath = localFilePath;
          _isLoading = false;
          _isFile = true;
        });
        log('lokasi file :${file} ');
        // ignore: use_build_context_synchronously
        ShowSnackBarHelper.show(
          context,
          message: 'Sukses Mendownload File',
          snackBarType: SnackBarType.success,
        );
      } else {
        _isLoading = false;
        // ignore: use_build_context_synchronously
        ShowSnackBarHelper.show(context,
            message: "Error Mendownload, Cek Koneksi Internet !",
            snackBarType: SnackBarType.warning);
      }
    } catch (error) {
      // Handle error secara umum
      print('Error: $error');
      // ignore: use_build_context_synchronously
      ShowSnackBarHelper.show(context,
          message: "Error Mendownload, Cek Koneksi Internet !",
          snackBarType: SnackBarType.warning);
    }
  }

  Future<void> _checkFileLocal() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    String cleanedUrl = widget.link.replaceAll('/', '');
    final localFilePath = '${appDocDir.path}/$cleanedUrl';
    File file = File(localFilePath);

    if (await file.exists()) {
      setState(() {
        _localFilePath = localFilePath;
        _isFile = true;
      });
      log('File already exists: $_localFilePath');
    } else {
      setState(() {
        log('File does not exist yet');
        _isFile = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Lihat File',
          style: AppTextStyle.body3.setSemiBold(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              _isFile == false ? Icons.download : Icons.download_done,
              color: AppColors.primary.pr10,
              semanticLabel: 'Download File',
            ),
            onPressed: () async {
              if (_isFile == true) {
              } else {
                _downloadPDF(widget.link);
              }
            },
          ),
        ],
      ),
      body: Center(
        child: _isLoading
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white54,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white,
                    )),
                    Text('Sedang Mendownload ... '),
                  ],
                ),
              )
            : _isFile == false
                ? const Text("Tekan Ikon Download")
                : _localFilePath.isNotEmpty
                    ? SfPdfViewer.file(File(_localFilePath))
                    : SfPdfViewer.file(
                        File(
                            '/data/user/0/com.example.quisku_pintar/app_flutter/$_cleaned'),
                      ),
      ),
    );
  }
}
