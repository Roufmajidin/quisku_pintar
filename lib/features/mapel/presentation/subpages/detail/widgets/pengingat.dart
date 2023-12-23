import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';

// ignore: must_be_immutable
class Pengingat extends StatelessWidget {
  String? type;
  MapelState state;
  bool shimmer;
  Pengingat({super.key, required this.state, required this.shimmer, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: shimmer == true
            ? Colors.grey
            : AppColors.primary.pr10.withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                type == 'presensi' ? 'Pengingat !' : 'Semangat',
                style: AppTextStyle.body2
                    .setSemiBold()
                    .copyWith(color: AppColors.primary.pr10),
              ),
            ],
          ),
          Text(
            type == 'presensi'
                ? state.messages
                : 'Karena mu bangsa ini menjadi besar',
            style: AppTextStyle.body3.copyWith(color: AppColors.primary.pr10),
          ),
        ],
      ),
    );
  }
}
