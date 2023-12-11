// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:quisku_pintar/features/authentication/presentation/login/screen/login_page.dart'
    as _i6;
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_page.dart'
    as _i1;
import 'package:quisku_pintar/features/dashboard/presentation/detail_notification/screen/detail_notification_page.dart'
    as _i3;
import 'package:quisku_pintar/features/dashboard/presentation/notification/screen/notification_page.dart'
    as _i7;
import 'package:quisku_pintar/features/home/presentation/screen/home_page.dart'
    as _i5;
import 'package:quisku_pintar/features/report_nilai/presentation/detail_nilai/screen/detail_nilai_page.dart'
    as _i2;
import 'package:quisku_pintar/features/report_nilai/presentation/riwayat_konversi/screen/riwayat_konversi_page.dart'
    as _i9;
import 'package:quisku_pintar/features/report_nilai/presentation/transkip_nilai/screen/transkip_nilai_page.dart'
    as _i11;
import 'package:quisku_pintar/features/splash/screen/splash_page.dart' as _i10;
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart'
    as _i15;
import 'package:quisku_pintar/features/ujian/presentation/subpages/detail_ujian/screen/detail_ujian_page.dart'
    as _i4;
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/screen/question_page.dart'
    as _i8;
import 'package:quisku_pintar/features/ujian/presentation/ujian/screen/ujia_page.dart'
    as _i12;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    DetailNilaiRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNilaiRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailNilaiPage(
          key: args.key,
          pelatihan: args.pelatihan,
        ),
      );
    },
    DetailNotificationRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNotificationRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailNotificationPage(
          key: args.key,
          title: args.title,
          date: args.date,
        ),
      );
    },
    DetailUjianRoute.name: (routeData) {
      final args = routeData.argsAs<DetailUjianRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DetailUjianPage(
          data: args.data,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HomePage(
          key: args.key,
          currentPage: args.currentPage,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationPage(),
      );
    },
    QuestionRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.QuestionPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    RiwayatKonversiRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.RiwayatKonversiPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashPage(),
      );
    },
    TranskipNilaiRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.TranskipNilaiPage(),
      );
    },
    UjianRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.UjianPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i13.PageRouteInfo<void> {
  const DashboardRoute({List<_i13.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailNilaiPage]
class DetailNilaiRoute extends _i13.PageRouteInfo<DetailNilaiRouteArgs> {
  DetailNilaiRoute({
    _i14.Key? key,
    required String pelatihan,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          DetailNilaiRoute.name,
          args: DetailNilaiRouteArgs(
            key: key,
            pelatihan: pelatihan,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailNilaiRoute';

  static const _i13.PageInfo<DetailNilaiRouteArgs> page =
      _i13.PageInfo<DetailNilaiRouteArgs>(name);
}

class DetailNilaiRouteArgs {
  const DetailNilaiRouteArgs({
    this.key,
    required this.pelatihan,
  });

  final _i14.Key? key;

  final String pelatihan;

  @override
  String toString() {
    return 'DetailNilaiRouteArgs{key: $key, pelatihan: $pelatihan}';
  }
}

/// generated route for
/// [_i3.DetailNotificationPage]
class DetailNotificationRoute
    extends _i13.PageRouteInfo<DetailNotificationRouteArgs> {
  DetailNotificationRoute({
    _i14.Key? key,
    required String title,
    required String date,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          DetailNotificationRoute.name,
          args: DetailNotificationRouteArgs(
            key: key,
            title: title,
            date: date,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailNotificationRoute';

  static const _i13.PageInfo<DetailNotificationRouteArgs> page =
      _i13.PageInfo<DetailNotificationRouteArgs>(name);
}

class DetailNotificationRouteArgs {
  const DetailNotificationRouteArgs({
    this.key,
    required this.title,
    required this.date,
  });

  final _i14.Key? key;

  final String title;

  final String date;

  @override
  String toString() {
    return 'DetailNotificationRouteArgs{key: $key, title: $title, date: $date}';
  }
}

/// generated route for
/// [_i4.DetailUjianPage]
class DetailUjianRoute extends _i13.PageRouteInfo<DetailUjianRouteArgs> {
  DetailUjianRoute({
    required _i15.Ujian data,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          DetailUjianRoute.name,
          args: DetailUjianRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailUjianRoute';

  static const _i13.PageInfo<DetailUjianRouteArgs> page =
      _i13.PageInfo<DetailUjianRouteArgs>(name);
}

class DetailUjianRouteArgs {
  const DetailUjianRouteArgs({
    required this.data,
    this.key,
  });

  final _i15.Ujian data;

  final _i14.Key? key;

  @override
  String toString() {
    return 'DetailUjianRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i13.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i14.Key? key,
    int? currentPage,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            currentPage: currentPage,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<HomeRouteArgs> page =
      _i13.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.currentPage,
  });

  final _i14.Key? key;

  final int? currentPage;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, currentPage: $currentPage}';
  }
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.NotificationPage]
class NotificationRoute extends _i13.PageRouteInfo<void> {
  const NotificationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.QuestionPage]
class QuestionRoute extends _i13.PageRouteInfo<QuestionRouteArgs> {
  QuestionRoute({
    _i14.Key? key,
    required int id,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          QuestionRoute.name,
          args: QuestionRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionRoute';

  static const _i13.PageInfo<QuestionRouteArgs> page =
      _i13.PageInfo<QuestionRouteArgs>(name);
}

class QuestionRouteArgs {
  const QuestionRouteArgs({
    this.key,
    required this.id,
  });

  final _i14.Key? key;

  final int id;

  @override
  String toString() {
    return 'QuestionRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i9.RiwayatKonversiPage]
class RiwayatKonversiRoute extends _i13.PageRouteInfo<void> {
  const RiwayatKonversiRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RiwayatKonversiRoute.name,
          initialChildren: children,
        );

  static const String name = 'RiwayatKonversiRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashPage]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.TranskipNilaiPage]
class TranskipNilaiRoute extends _i13.PageRouteInfo<void> {
  const TranskipNilaiRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TranskipNilaiRoute.name,
          initialChildren: children,
        );

  static const String name = 'TranskipNilaiRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.UjianPage]
class UjianRoute extends _i13.PageRouteInfo<void> {
  const UjianRoute({List<_i13.PageRouteInfo>? children})
      : super(
          UjianRoute.name,
          initialChildren: children,
        );

  static const String name = 'UjianRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
