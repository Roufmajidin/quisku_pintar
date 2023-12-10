// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class TabMenu extends StatelessWidget {
  List<Widget> tabList;
  final void Function(int indexTab) onChangedTab;

  TabMenu({super.key, required this.tabList, required this.onChangedTab});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      onTap: onChangedTab,
      labelPadding: const EdgeInsets.symmetric(horizontal: 12),
      indicator: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.primary.pr10,
            width: 2.0,
          ),
        ),
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: AppColors.neutral.ne09,
      unselectedLabelColor: AppColors.neutral.ne09.withOpacity(0.4),
      tabs: tabList,
    );
  }
}
