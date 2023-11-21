import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class DropdownStyle extends StatelessWidget {
  final String? initialValue;
  final ValueChanged<String?>? onChanged;
  final String labelText;
  final String? hintText;
  final List<String>? items;

  const DropdownStyle({
    Key? key,
    this.initialValue, // Update nilai awal dropdown di sini
    this.onChanged,
    required this.labelText,
    this.hintText,
    this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          labelText,
          textAlign: TextAlign.left,
          style: AppTextStyle.body3.setMedium(),
        ),
        const SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.neutral.ne03,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: DropdownButtonFormField<String?>(
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            value: initialValue,
            onChanged: onChanged,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
            items: [
              DropdownMenuItem<String>(
                value: null,
                child: Text(
                  'Pilih Divisi atau Unit Kerja',
                  style: AppTextStyle.body3
                      .copyWith(
                        color: AppColors.neutral.ne06,
                      )
                      .setRegular(),
                ),
              ),
              ...items
                      ?.map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: AppTextStyle.body3.setRegular().copyWith(
                                  color: AppColors.neutral.ne06,
                                ),
                          ),
                        ),
                      )
                      .toList() ??
                  [],
            ],
          ),
        ),
      ],
    );
  }
}
