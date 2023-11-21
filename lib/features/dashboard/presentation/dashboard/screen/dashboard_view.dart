import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/widgets/container_artikel.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/widgets/fitur.dart';

class DashboardView extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const DashboardView({Key? key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;
  List<Map<String, String>> dataArtikel = [
    {
      'image': Assets.images.artikel.path.toString(),
      'day': '11 Oktober 2022, 15.30 WIB',
      'title': 'Panduan Desain UI/UX yang Efisien di Figma',
      'description': 'Sekarang buat website cukup hitungan menit kam...'
    },
    {
      'image': Assets.images.artikel.path.toString(),
      'day': '11 Oktober 2022, 15.30 WIB',
      'title': 'Panduan Desain UI/UX yang Efisien di Figma',
      'description': 'Sekarang buat website cukup hitungan menit kam...'
    },
    {
      'image': Assets.images.artikel.path.toString(),
      'day': '11 Oktober 2022, 15.30 WIB',
      'title': 'Panduan Desain UI/UX yang Efisien di Figma',
      'description': 'Sekarang buat website cukup hitungan menit kam...'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: AppColors.primary.pr10,
                  height: 240,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 64, 16, 0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Text(
                                  'John Snow',
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
                                  context.router
                                      .push(const NotificationRoute());
                                },
                                child:
                                    Assets.icons.notification.svg(width: 30)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset(
                    'assets/images/ornamen.png',
                    width: 180,
                    height: 135,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Column(
                    children: [
                      CarouselSlider(
                        carouselController: _carouselController,
                        options: CarouselOptions(
                            enlargeCenterPage: false,
                            enableInfiniteScroll: true,
                            height: 170,
                            aspectRatio: 16 / 9,
                            scrollDirection: Axis.horizontal,
                            viewportFraction: 1,
                            pauseAutoPlayOnTouch: true,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            }),
                        items: const [
                          // CarouselSertifikat(),
                          // CarouselSertifikat(),
                          // CarouselSertifikat(),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == index
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Fitur',
                      style: AppTextStyle.body3.setSemiBold(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const FiturLxp(),
                    const SizedBox(
                      height: 24,
                    ),
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
                                  child: Assets.images.lp1
                                      .image(width: 80, height: 64),
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
                                      style: AppTextStyle.body4.copyWith(
                                          color: AppColors.neutral.ne06),
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
                                          style:
                                              AppTextStyle.body4.setRegular(),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Assets.icons.video.svg(),
                                        Text(
                                          '14 Video',
                                          style:
                                              AppTextStyle.body4.setRegular(),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Assets.icons.user.svg(),
                                        Text(
                                          '80',
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
                            Stack(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColors.neutral.ne13,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '25%',
                                      style: AppTextStyle.body4
                                          .setRegular()
                                          .copyWith(
                                              color: AppColors.primary.pr10),
                                    )
                                  ],
                                ),
                                Positioned(
                                  top: 5,
                                  left: 0,
                                  child: Container(
                                    width: 50,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.primary.pr10,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Artikel',
                          style: AppTextStyle.body3.setSemiBold(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'Lihat Semua',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Assets.icons.arrowRight.svg(color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        shrinkWrap: true, // Set shrinkWrap menjadi true
                        scrollDirection: Axis.horizontal,
                        itemCount: dataArtikel.length,
                        itemBuilder: (context, index) {
                          final acaraU = dataArtikel[index];
                          return GestureDetector(
                            onTap: () {
                              // _navigateToDetail(acaraU['title']!);
                            },
                            child: ContainerArtikel(
                              image: acaraU['image']!,
                              day: acaraU['day']!,
                              title: acaraU['title']!,
                              description: acaraU['description']!,
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Webinar',
                          style: AppTextStyle.body3.setSemiBold(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'Lihat Semua',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Assets.icons.arrowRight.svg(color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 300,
                    //   child: ListView.builder(
                    //     shrinkWrap: true, // Set shrinkWrap menjadi true
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: dataAcara.length,
                    //     itemBuilder: (context, index) {
                    //       final acaraU = dataAcara[index];
                    //       return GestureDetector(
                    //         onTap: () {},
                    //         child: ContainerAcara(
                    //           image: acaraU['image']!,
                    //           day: acaraU['day']!,
                    //           time: acaraU['time']!,
                    //           title: acaraU['title']!,
                    //           price: acaraU['price']!,
                    //           keterangan: acaraU['keterangan']!,
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Workshop',
                          style: AppTextStyle.body3.setSemiBold(),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'Lihat Semua',
                                style: AppTextStyle.body4.setRegular(),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Assets.icons.arrowRight.svg(color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 300,
                    //   child: ListView.builder(
                    //     shrinkWrap: true, // Set shrinkWrap menjadi true
                    //     scrollDirection: Axis.horizontal,
                    //     itemCount: dataAcara.length,
                    //     itemBuilder: (context, index) {
                    //       final acaraU = dataAcara[index];
                    //       return GestureDetector(
                    //         onTap: () {},
                    //         child: ContainerAcara(
                    //           image: acaraU['image']!,
                    //           day: acaraU['day']!,
                    //           time: acaraU['time']!,
                    //           title: acaraU['title']!,
                    //           price: acaraU['price']!,
                    //           keterangan: acaraU['keterangan']!,
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    // const SizedBox(
                    // height: 16,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
