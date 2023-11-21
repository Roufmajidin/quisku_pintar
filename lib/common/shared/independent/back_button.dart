import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../gen/assets.gen.dart';
import '../../themes/themes.dart';

/// Custom back button widget with default callback:
/// ```dart
/// () => context.router.pop()
/// ```
class BackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;

  const BackButton({
    super.key,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed ?? () => context.router.pop(),
        tooltip: 'Kembali',
        icon: Assets.icons.arrowLeft.svg(
          colorFilter: ColorFilter.mode(
            color ?? AppColors.neutral.ne01,
            BlendMode.srcIn,
          ),
          placeholderBuilder: (context) => Image.memory(kTransparentImage),
        ));
  }
}
