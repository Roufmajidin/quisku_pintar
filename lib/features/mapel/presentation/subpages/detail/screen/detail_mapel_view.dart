import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/widgets/log_tugas.dart';
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/widgets/presensi.dart';

class DetailMapelView extends StatefulWidget {
  final Pelajaran mapel;
  // final int ujianId;

  // ignore: prefer_const_constructors_in_immutables
  DetailMapelView({
    Key? key,
    required this.mapel,
    // required this.ujianId,
  }) : super(key: key);

  @override
  State<DetailMapelView> createState() => _DetailMapelViewState();
}

class _DetailMapelViewState extends State<DetailMapelView> {
  @override
  void initState() {
    super.initState();
    fetcUlang();
  }

  fetcUlang() {
    setState(() {
      context.read<MapelBloc>().add(FetchPresensi(mapelId: widget.mapel.id));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.mapel.mapel,
          style: AppTextStyle.body3.setSemiBold(),
        ),
      ),
      body: RefreshIndicator(
        color: AppColors.primary.pr10,
        displacement: 6.0,
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        onRefresh: () async {
          fetcUlang();

          return Future<void>.delayed(const Duration(seconds: 5));
        },
        child: BlocBuilder<MapelBloc, MapelState>(
          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 208,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        // color: Colors.grey,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: widget.mapel.images,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            widget.mapel.mapel,
                            style: AppTextStyle.body3.setSemiBold(),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            widget.mapel.guru,
                            textAlign: TextAlign.justify,
                            style: AppTextStyle.body4
                                .setRegular()
                                .copyWith(color: AppColors.neutral.ne10),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          DefaultTabController(
                            length: 3,
                            child: Column(
                              children: [
                                const TabBar(
                                  tabs: [
                                    Tab(text: 'Presensi'),
                                    Tab(text: 'Penugasan'),
                                    Tab(text: 'Log tugas'),
                                  ],
                                ),
                                SizedBox(
                                  height: 500,
                                  child: TabBarView(
                                    children: [
                                      ListView(
                                        children: [
                                          PresensiWidget(
                                              refresh: (value) {
                                                fetcUlang();
                                              },
                                              data: widget.mapel,
                                              type: 'presensi'),
                                        ],
                                      ),
                                      ListView(
                                        children: [
                                          // ContentInformasi(data: ujian),
                                          PresensiWidget(
                                              refresh: (value) {
                                                fetcUlang();
                                              },
                                              data: widget.mapel,
                                              type: 'penugasan'),
                                        ],
                                      ),
                                      ListView(
                                        children: [
                                          LogTugas(data: widget.mapel),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      // bottomNavigationBar: UjianButton(ujian: ujian, ujianId: ujianId),
    );
  }
}
