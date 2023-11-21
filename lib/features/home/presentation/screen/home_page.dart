import 'package:auto_route/auto_route.dart';
import 'package:lxp_mobile/common/gen/assets.gen.dart';
import 'package:lxp_mobile/common/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:lxp_mobile/features/dashboard/presentation/dashboard/screen/dashboard_page.dart';
import 'package:lxp_mobile/features/penugasan/screen/penugasan_page.dart';
import 'package:lxp_mobile/features/rencana_pelatihan/presentation/rencana_pelatihan/screen/rencana_pelatihan_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: LxpAppBar(
      //   leading: SizedBox(width: 25.0, child: Assets.images.lxpLogo.image()),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.notifications_rounded),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.person_rounded),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      /* AppBar(
        backgroundColor: AppColors.primary.pr01,
        leading: Assets.images.pngajuanLogo.image(width: 20.0),
        actions: [
          Text('ABC'),
          Text('ABC'),
        ],
      ), */

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
            label: 'Pelatihan-Ku',
            selectedIcon: Assets.icons.pelatihan.svg(
              // ignore: deprecated_member_use_from_same_package
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Assets.icons.penugasanSvg.svg(),
            label: 'Penugasan',
            // ignore: deprecated_member_use_from_same_package
            selectedIcon: Assets.icons.penugasanSvg.svg(color: Colors.blue),
          ),
          NavigationDestination(
            icon: Assets.icons.akun.svg(),
            label: 'Akun',
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
        const DashboardPage(),
        const RencanaPelatihanPage(),
        const PenugasanPage(),
        Container(
          color: AppColors.neutral.ne05,
          alignment: Alignment.center,
          child: const Text('Profile'),
        ),
      ][currentPageIndex],
    );
  }
}
