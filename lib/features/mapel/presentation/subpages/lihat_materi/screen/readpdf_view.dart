import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadPdfView extends StatefulWidget {
  String link;

  ReadPdfView({super.key, required this.link});

  @override
  State<ReadPdfView> createState() => _ReadPdfViewState();
}

class _ReadPdfViewState extends State<ReadPdfView> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  late String document;
  bool _isLoading = true;

  @override
  initState() {
    super.initState();
    // _pdfViewerKey.currentState?.openBookmarkView();
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
              onPressed: () {
                _pdfViewerKey.currentState?.openBookmarkView();
              },
            ),
          ],
        ),
        body: Center(
            child:
                // ? const Center(child: CircularProgressIndicator())
                SfPdfViewer.network(
          widget.link,
          enableDoubleTapZooming: true,
        )));
  }
}
