import 'package:flutter/material.dart';

import '../../themes/themes.dart';

/// LxpAppBar adalah kelas AppBar yang menyesuaikan dengan tema dan desain aplikasi Kampus Gratis.
class LxpAppBar extends AppBar implements PreferredSizeWidget {
  /// Constructor dari LxpAppBar
  LxpAppBar(
      {super.key,
      Widget? leading,
      String title = '',
      bool withIconLxp = false,
      List<Widget>? actions,
      PreferredSizeWidget? bottom})
      : super(
          backgroundColor: AppColors.primary.pr01,
          automaticallyImplyLeading: false,
          leading: leading,
          toolbarHeight: 78,
          elevation: 0,
          bottom: bottom,
          title: Text(
            title,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.neutral.ne03),
          ),
          centerTitle: true,
          actions: actions,
        );

  @override
  Size get preferredSize => const Size.fromHeight(78);
}
