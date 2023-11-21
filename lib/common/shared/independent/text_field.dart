import 'package:flutter/material.dart';

import '../../extensions/extensions.dart';
import '../../themes/themes.dart';

class KgTextField extends StatelessWidget {
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool readOnly;
  final bool? enabled;
  final String labelText;
  final String? hintText;
  final String? errorText;
  final String? helperText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  const KgTextField({
    super.key,
    this.initialValue,
    this.onChanged,
    this.textInputAction,
    this.keyboardType,
    this.obscureText = false,
    this.readOnly = false,
    this.enabled,
    required this.labelText,
    this.hintText,
    this.errorText,
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
  });

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
        TextFormField(
          initialValue: initialValue,
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            errorText: errorText,
            helperText: helperText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.neutral.ne03,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.neutral.ne03,
              ),
            ),
            contentPadding: const EdgeInsets.all(12.0),
          ),
          style: AppTextStyle.body3.copyWith(
            color: AppColors.neutral.ne09,
          ),
          enabled: enabled,
          obscuringCharacter: '●',
          obscureText: obscureText,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          readOnly: readOnly,
        ),
      ],
    );
  }
}
