import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';

import '../../../../../../common/themes/themes.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatefulWidget {
  bool isFilledButton;
  Function(bool) tapped;
  double? customWidth;

  ButtonWidget(
      {super.key,
      required this.label,
      required this.isFilledButton,
      this.customWidth,
      required this.tapped});

  final String label;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  void initState() {
    super.initState();
    loads = false;
  }

  bool? load;

  bool loads = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.customWidth ?? 160,
      child: ElevatedButton(
        onPressed: () async {
          widget.tapped(true);

          // await Future.delayed(Duration(seconds: 3));
        },
        style: widget.isFilledButton == false
            ? ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    width: 1.5,
                    color: widget.isFilledButton == false &&
                            widget.label != "Tambah Gambar"
                        ? AppColors.neutral.ne03
                        : AppColors.primary.pr10, // Set the border color
                  ),
                ),
              )
            : ElevatedButton.styleFrom(
                backgroundColor: widget.label == "Kirim"
                    ? AppColors.success.scs10
                    : AppColors.primary.pr10,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: loads == true &&
                  widget.label != "Batal" &&
                  widget.label != "Kembali"
              ? const CircularProgressIndicator()
              : Text(
                  widget.label,
                  style: AppTextStyle.body2
                      .copyWith(
                          color: widget.isFilledButton == true &&
                                  widget.label == "Tambah Gambar"
                              ? AppColors.neutral.ne03
                              : widget.isFilledButton == true &&
                                      widget.label == "Kirim"
                                  ? AppColors.neutral.ne03
                                  : AppColors.neutral.ne03)
                      .setMedium(),
                ),
        ),
      ),
    );
  }
}
