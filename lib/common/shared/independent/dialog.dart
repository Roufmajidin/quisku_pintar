import 'package:flutter/material.dart';

import '../../../common/extensions/extensions.dart';
import '../../themes/themes.dart';

class LxpDialog extends StatelessWidget {
  final String? title;
  final String? content;
  final LxpDialogType? type;
  final String? confirmText;
  final VoidCallback? onConfirm;
  final String? cancelText;
  final VoidCallback? onCancel;

  const LxpDialog({
    super.key,
    this.title,
    this.content,
    this.type,
    this.confirmText,
    this.onConfirm,
    this.cancelText,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (type != null) _buildIcon(type!),
            if (type != null) const SizedBox(height: 16.0),
            if (title != null)
              Text(
                title!,
                style: AppTextStyle.body2
                    .setSemiBold()
                    .copyWith(color: AppColors.neutral.ne09),
                textAlign: TextAlign.center,
              ),
            if (content != null)
              Text(
                content!,
                style: AppTextStyle.body3
                    .setRegular()
                    .copyWith(color: AppColors.neutral.ne09),
                textAlign: TextAlign.center,
              ),
            if (title != null || content != null) const SizedBox(height: 16.0),
            if (confirmText != null || cancelText != null)
              Row(
                children: [
                  if (cancelText != null)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: onCancel,
                        child: Text(cancelText!),
                      ),
                    ),
                  if (cancelText != null && confirmText != null)
                    const SizedBox(width: 8.0),
                  if (confirmText != null)
                    Expanded(
                      child: FilledButton(
                        onPressed: onConfirm,
                        child: Text(confirmText!),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(LxpDialogType type) {
    switch (type) {
      case LxpDialogType.confirm:
        return Icon(
          Icons.help,
          color: AppColors.secondary.scRed.sc05,
          size: 80.0,
        );
      case LxpDialogType.success:
        return Icon(
          Icons.check_circle,
          color: AppColors.success.scs07,
          size: 80.0,
        );
      case LxpDialogType.error:
        return Icon(
          Icons.error_rounded,
          color: AppColors.danger.dng05,
          size: 80.0,
        );
      case LxpDialogType.warning:
        return Icon(
          Icons.warning_rounded,
          color: AppColors.secondary.scYellow.sc05,
          size: 80.0,
        );
    }
  }
}

enum LxpDialogType { confirm, success, error, warning }
