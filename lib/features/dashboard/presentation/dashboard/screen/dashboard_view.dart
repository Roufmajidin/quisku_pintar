import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/core/helpers/loading.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/features/authentication/bloc/login_bloc.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/widgets/widgets.dart';
import '../bloc/dashboard_bloc.dart';

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
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state.status == FetchStatus.success) {
            context.router.pushAndPopUntil(
              const LoginRoute(),
              predicate: (route) => false,
            );
          }
          return Stack(
            children: [
              SingleChildScrollView(
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
                                    Assets.icons.arrowRight
                                        .svg(color: Colors.black),
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
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                              if (state.fetchMapelStatus.isFailure) {
                                log("gagal");
                                {
                                  return SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height,
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
                                        context.pushRoute(
                                            DetailMapelRoute(data: data));
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
              if (state.onLogoutProses == FetchStatus.loading)
                const LoadingWidget(),
            ],
          );
        },
      ),
    );
  }
}
