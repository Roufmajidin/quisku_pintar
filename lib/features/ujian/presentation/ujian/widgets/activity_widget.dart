import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/core/utils/enums.dart';
import 'package:quisku_pintar/features/ujian/presentation/ujian/bloc/ujian_bloc.dart';
import '../../../../../common/gen/assets.gen.dart';
import '../../../../../core/helpers/show_snackbar_helper.dart';

class UjianList extends StatelessWidget {
  const UjianList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UjianBloc, UjianState>(
      builder: (context, state) {
        if (state.fetchUjianStatus.isLoading) {
          log('ok');
          // context.read<UjianBloc>().add(const GetUjian());
          if (state.examFinish == 200) {
            context.router.push(const UjianRoute());
            ShowSnackBarHelper.show(context,
                snackBarType: SnackBarType.success,
                message: 'Selamat, selesai ujian');
          }
          return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const Center(child: CircularProgressIndicator()));
        }

        if (state.fetchUjianStatus.isFailure) {
          return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(child: Assets.images.serviceU.image(height: 300)));
        }
        // TODO , kayaknya disini bakal diisi jika ujian status adalah 0/1 pada masing masing type

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 700,
                child: ListView.builder(
                  itemCount: state.fetchUjian.length,
                  itemBuilder: (context, index) {
                    final data = state.fetchUjian[index];
                    return GestureDetector(
                      onTap: () {
                        // ke detail
                        context.router.push(
                            DetailUjianRoute(data: data, ujianId: data.id));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        child: Image.network(data.images,
                                            width: 80, height: 64)),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.mapel,
                                          style:
                                              AppTextStyle.body3.setSemiBold(),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          data.guru,
                                          style: AppTextStyle.body4.copyWith(
                                              color: AppColors.neutral.ne06),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Assets.icons.ditugaskan1
                                                .svg(height: 14),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              data.status,
                                              style: AppTextStyle.body4
                                                  .setRegular()
                                                  .copyWith(
                                                      color: data.status ==
                                                              "Belum Mengerjakan"
                                                          ? AppColors
                                                              .danger.dng09
                                                          : AppColors
                                                              .success.scs10),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            Assets.icons.user.svg(),
                                            Text(
                                              '0',
                                              style: AppTextStyle.body4
                                                  .setRegular(),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
