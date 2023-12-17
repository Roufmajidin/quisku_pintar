// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

// ignore: must_be_immutable
class BuildRow extends StatelessWidget {
  String label;
  double? customeWidth;
  BuildRow({super.key, required this.label, this.customeWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: customeWidth ?? 76,
        child: Center(
            child: Text(
          label,
          style: AppTextStyle.body3.setMedium().copyWith(color: Colors.white),
        )));
  }
}
