import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'card_widget.dart';
import 'pengingat.dart';
import 'presensi.dart';

class ShimmerLoadWidget extends StatelessWidget {
  const ShimmerLoadWidget({
    super.key,
    required this.widget,
    required this.state,
  });

  final PresensiWidget widget;
  final MapelState state;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      // loop: 1,
      enabled: true,
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          Pengingat(state: state, shimmer: true),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 14,
              itemBuilder: (context, index) {
                final dataPresen = state.presensiData;

                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'P${index + 1}',
                      style: AppTextStyle.body3
                          .setSemiBold()
                          .copyWith(color: AppColors.neutral.ne01),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          CardWidget(widget: widget),
        ],
      ),
    );
  }
}
