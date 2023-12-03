import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/features/acara_unik/data/models/ujian_models.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/screen/detail_acara_page.dart';

import '../bloc/ujian_bloc.dart';

class UjianView extends StatefulWidget {
  const UjianView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UjianViewState createState() => _UjianViewState();
}

List<Map<String, String>> filterDataAcara = [];
List<Map<String, String>> dataAcara = [
  {
    'image': Assets.images.imgWebinar.path.toString(),
    'day': 'Hari ini',
    'time': '13.00',
    'title': 'Strategi Interview UI/UX',
    'price': 'Rp 200.000',
    'keterangan': 'Gratis',
  },
  {
    'image': Assets.images.imgWebinar.path.toString(),
    'day': 'Hari ini',
    'time': '13.00',
    'title': 'Strategi Interview UI/UX',
    'price': 'Rp 200.000',
    'keterangan': 'Gratis',
  },
  {
    'image': Assets.images.imgWebinar.path.toString(),
    'day': 'Hari ini',
    'time': '13.00',
    'title': 'Strategi Interview UI/UX',
    'price': 'Rp 200.000',
    'keterangan': 'Gratis',
  },
];

class _UjianViewState extends State<UjianView> {
  final TextEditingController _searchController = TextEditingController();

  void _navigateToDetail(String title) {
    _searchController.clear();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailAcaraPage(title: title),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      // context.read<UjianBloc>().add(const UjianEvent.getUjianUser());

      context.read<UjianBloc>().add(const GetUjian());
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColors.primary.pr10,
        title: GestureDetector(
          onTap: () {
            // context.read<UjianBloc>().add(GetUjian());
            context.read<UjianBloc>().add(const UjianEvent.getUjianUser());
          },
          child: Text(
            'Ujian Page',
            style: AppTextStyle.body3
                .setSemiBold()
                .copyWith(color: AppColors.neutral.ne01),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TerakhirMengerjakan(),
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
    return BlocBuilder<UjianBloc, UjianState>(
      builder: (context, state) {
        if (state.fetchUjianStatus.isLoading) {
          log('ok');
          // context.read<UjianBloc>().add(const GetUjian());
          // context.read<UjianBloc>().add(const GetUjian());

          return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const Center(child: CircularProgressIndicator()));
        }
        if (state.fetchUjianStatus.isSuccess) {
          log("ok");
        }
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
                    return Padding(
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
                                        style: AppTextStyle.body3.setSemiBold(),
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
                                            style:
                                                AppTextStyle.body4.setRegular(),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          Assets.icons.user.svg(),
                                          Text(
                                            '0',
                                            style:
                                                AppTextStyle.body4.setRegular(),
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
