import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';

import '../../gen/assets.gen.dart';
import '../../themes/themes.dart';

// ignore: must_be_immutable
class PnDropdownTextField extends StatefulWidget {
  TextEditingController controller;
  String selectedValue;
  String defaultValue;
  String label;
  List<String> dropdownItems;
  PnDropdownTextField(
      {super.key,
      required this.controller,
      required this.selectedValue,
      required this.label,
      required this.defaultValue,
      required this.dropdownItems});

  @override
  State<PnDropdownTextField> createState() => _PnDropdownTextFieldState();
}

class _PnDropdownTextFieldState extends State<PnDropdownTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 8),
          child: Text(
            widget.label,
            style: AppTextStyle.body3.setMedium(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.neutral.ne03,
            ),
          ),
          padding: const EdgeInsets.only(right: 12.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String?>(
              value: widget.selectedValue,
              onChanged: (value) {
                setState(() {});
              },
              iconStyleData: IconStyleData(
                icon: Assets.icons.arrowDown.svg(),
                iconSize: 14,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.neutral.ne01,
                ),
                offset: const Offset(1, 0),
                scrollbarTheme: ScrollbarThemeData(
                  radius: const Radius.circular(20),
                  thickness: MaterialStateProperty.all<double>(6),
                  thumbVisibility: MaterialStateProperty.all<bool>(true),
                ),
              ),
              items: [
                ...(widget.dropdownItems
                        .map<DropdownMenuItem<String>>(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Row(
                              children: [
                                Text(
                                  item,
                                  style:
                                      AppTextStyle.body3.setRegular().copyWith(
                                            color: AppColors.neutral.ne06,
                                          ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList() ??
                    []),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }
}
