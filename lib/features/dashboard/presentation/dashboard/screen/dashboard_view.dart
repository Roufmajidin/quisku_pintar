import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/widgets/fitur.dart';

import 'package:quisku_pintar/features/authentication/bloc/login_bloc.dart';

import '../bloc/dashboard_bloc.dart';
import '../widgets/container_pelatihan.dart';

class DashboardView extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const DashboardView({Key? key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  void initState() {
    super.initState();
    context.read<DashboardBloc>().add(const DashboardEvent.getMapel());

    context.read<LoginBloc>().add(const GetUserData());
    //   log('pada view ${state.user}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(height: 24),
            const FiturWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mapel ',
                        style: AppTextStyle.body3.setSemiBold(),
                      ),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<DashboardBloc>()
                              .add(const DashboardEvent.getMapel());
                        },
                        child: Row(
                          children: [
                            Text(
                              'Lihat Semua',
                              style: AppTextStyle.body3.setRegular(),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            // ignore: deprecated_member_use_from_same_package
                            Assets.icons.arrowRight.svg(color: Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: BlocBuilder<DashboardBloc, DashboardState>(
                    builder: (context, state) {
                      if (state.fetchMapelStatus.isLoading) {
                        context
                            .read<DashboardBloc>()
                            .add(const DashboardEvent.getMapel());
                        log('ok');
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (state.fetchMapelStatus.isFailure) {
                        log("gagal");
                        {
                          return SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Center(
                                  child: Assets.images.serviceU
                                      .image(height: 200, width: 100)));
                        }
                      }
                      return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.fetchMapel.length,
                        itemBuilder: (context, index) {
                          final data = state.fetchMapel[index];
                          for (var element in state.fetchMapel) {
                            log(element.guru);
                          }
                          return Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: GestureDetector(
                              onTap: () {
                                // _navigateToDetail('detail Mapel');
                                context.pushRoute(DetailMapelRoute(data: data));
                              },
                              child: ContainerPelatihan(
                                callBack: () {},
                                image: data.images,
                                guru: data.guru,
                                mapel: data.mapel,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                const TerakhirMengerjakan()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        // if (state.user == null) {
        //
        //   // return CircularProgressIndicator();
        // }
        return Stack(
          children: [
            Container(
              alignment: Alignment.center,
              color: AppColors.primary.pr10,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 64, 16, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          // backgroundColor: Colors.yellow,
                          radius: 25,
                          child: Image.asset(
                            'assets/images/avatar.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Halo',
                              style: AppTextStyle.body3
                                  .copyWith(color: AppColors.neutral.ne01)
                                  .setRegular(),
                            ),
                            state.status == FormzStatus.submissionInProgress ||
                                    state.user == null
                                ? state.status == FormzStatus.submissionFailure
                                    ? const SizedBox()
                                    : SizedBox(
                                        height: 15,
                                        width: 15,
                                        child: CircularProgressIndicator(
                                          color: AppColors.neutral.ne01,
                                        ),
                                      )
                                : Text(
                                    state.user?.name ?? 'load',
                                    style: AppTextStyle.body2
                                        .copyWith(color: AppColors.neutral.ne01)
                                        .setMedium(),
                                  ),
                          ],
                        ),
                        const Spacer(),
                        Assets.icons.search.svg(width: 30),
                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                            onTap: () {
                              context
                                  .read<LoginBloc>()
                                  .add(const LoginEvent.logout());
                              // context.router.push(const NotificationRoute());
                              if (state.status ==
                                  FormzStatus.submissionSuccess) {
                                context.router.pushAndPopUntil(
                                  const LoginRoute(),
                                  predicate: (route) => false,
                                );
                              }
                            },
                            child:
                                state.status == FormzStatus.submissionInProgress
                                    ? const SizedBox(
                                        height: 30,
                                        child: CircularProgressIndicator(),
                                      )
                                    : Assets.icons.notification.svg(width: 30)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class FiturWidget extends StatelessWidget {
  const FiturWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fitur',
              style: AppTextStyle.body3.setSemiBold(),
            ),
            const FiturLxp(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

class TerakhirMengerjakan extends StatelessWidget {
  const TerakhirMengerjakan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Terakhir Mengerjakan',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            width: double.infinity,
            height: 150,
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
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Assets.images.lp1.image(width: 80, height: 64),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Keterampilan Komunikasi',
                            style: AppTextStyle.body3.setSemiBold(),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Neneng Rohaye S. Kom.',
                            style: AppTextStyle.body4
                                .copyWith(color: AppColors.neutral.ne06),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Assets.icons.sks.svg(),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                '3 SKS',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Assets.icons.video.svg(),
                              Text(
                                '14 Video',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Assets.icons.user.svg(),
                              Text(
                                '80',
                                style: AppTextStyle.body4.setRegular(),
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
        ],
      ),
    );
  }
}
