import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/helpers/loading.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
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

  Future<String> _getAppDocumentsDirectory() async {
    Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();
    return '${appDocumentsDirectory.path}/$_cleaned';
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
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('PDF downloaded successfully'),
          ),
        );
      } else {
        _isLoading = false;
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Error downloading PDF. Status Code: ${response.statusCode}'),
          ),
        );
      }
    } catch (error) {
      // Handle error secara umum
      print('Error: $error');
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error downloading PDF'),
        ),
      );
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
          'Ratu Cirendeu',
          style: AppTextStyle.body3.setSemiBold(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: AppColors.primary.pr10,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () async {
              _downloadPDF(widget.link);
              String appDocumentsDirectory = await _getAppDocumentsDirectory();
              print('Lokasi file: $appDocumentsDirectory');
            },
          ),
        ],
      ),
      body: Center(
        child: _isLoading
            ? const LoadingWidget()
            : _isFile == false
                ? const Text("Hey, yuk download dlu")
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
