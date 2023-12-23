import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

// ignore: must_be_immutable
class LoadingContainer extends StatelessWidget {
  double pre;
  Function(bool) isDone;

  LoadingContainer({super.key, required this.pre, required this.isDone});

  @override
  Widget build(BuildContext context) {
    if (pre == 1.0) {
      isDone(true);
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GFProgressBar(
        animationDuration: 300,
        progressHeadType: GFProgressHeadType.circular,
        percentage: pre,
        animation: true,

        // leading: Text("PR kamu sedang diupload"),
        lineHeight: 12,
        backgroundColor: Colors.black26,
        progressBarColor: Colors.green,

        trailing: Text(pre == 1.0 ? 'Selesai' : 'Proses'),
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Text(
            pre.toString(),
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
