// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

// ignore: must_be_immutable
class HeaderContainer extends StatelessWidget {
  Widget child;

  HeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 70,
      decoration: BoxDecoration(
        color: AppColors.primary.pr10,
        border: const Border(
          bottom: BorderSide(color: Colors.white),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: child,
      ),
    );
  }
}
