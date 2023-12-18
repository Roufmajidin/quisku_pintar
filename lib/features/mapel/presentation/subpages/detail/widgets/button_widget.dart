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
      width: widget.customWidth ?? 148,
      child: ElevatedButton(
        onPressed: () async {
          setState(() {
            loads = true;
            // Future.delayed(Duration(seconds: 3));
          });
          if (loads == true) {
            setState(() {
              loads == false;
            });
          }
          await Future.delayed(Duration(seconds: 3));

          await widget.tapped(loads == true ? true : false);
        },
        style: widget.isFilledButton == false
            ? ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    width: 1.5,
                    color: AppColors.primary.pr10, // Set the border color
                  ),
                ),
              )
            : ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary.pr10,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2),
          child: loads == true &&
                  widget.label != "Batal" &&
                  widget.label != "Kembali"
              ? const CircularProgressIndicator()
              : Text(
                  widget.label,
                  style: AppTextStyle.body2
                      .copyWith(
                          color: widget.isFilledButton
                              ? AppColors.neutral.ne01
                              : AppColors.primary.pr10)
                      .setMedium(),
                ),
        ),
      ),
    );
  }
}
