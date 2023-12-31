import 'package:auto_route/auto_route.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_page.dart';
import 'package:quisku_pintar/features/report_nilai/presentation/transkip_nilai/screen/transkip_nilai_page.dart';
import 'package:quisku_pintar/features/ujian/presentation/ujian/screen/ujia_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  final int? currentPage;
  const HomePage({super.key, this.currentPage});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    if (widget.currentPage != null) {
      currentPageIndex = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        destinations: [
          NavigationDestination(
            // ignore: deprecated_member_use_from_same_package
            icon: Assets.icons.home1.svg(color: Colors.grey),
            label: 'Beranda',
            // ignore: deprecated_member_use_from_same_package
            selectedIcon: Assets.icons.home1.svg(color: Colors.blue),
          ),
          NavigationDestination(
            icon: Assets.icons.pelatihan.svg(),
            label: 'Ujian',
            selectedIcon: Assets.icons.pelatihan.svg(
              // ignore: deprecated_member_use_from_same_package
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Assets.icons.penugasanSvg.svg(),
            label: 'Riwayat Ujian',
            // ignore: deprecated_member_use_from_same_package
            selectedIcon: Assets.icons.penugasanSvg.svg(color: Colors.blue),
          ),
          NavigationDestination(
            icon: Assets.icons.akun.svg(),
            label: 'Profile',
            // ignore: deprecated_member_use_from_same_package
            selectedIcon: Assets.icons.akun.svg(color: Colors.blue),
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: <Widget>[
        // ignore: prefer_const_constructors
        DashboardPage(),
        const UjianPage(),
        const TranskipNilaiPage(),
        Container(
          color: AppColors.neutral.ne05,
          alignment: Alignment.center,
          child: const Text('Profile'),
        ),
      ][currentPageIndex],
    );
  }
}
