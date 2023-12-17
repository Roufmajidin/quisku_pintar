// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../../common/themes/themes.dart';

class HeaderContainer extends StatelessWidget {
  Widget child;

  HeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 37,
      decoration: BoxDecoration(
        color: AppColors.primary.pr10,
        border: const Border(
          bottom: BorderSide(color: Colors.white),
        ),
      ),
      child: child,
    );
  }
}
