// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i16;
import 'package:quisku_pintar/features/authentication/presentation/login/screen/login_page.dart'
    as _i7;
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart'
    as _i15;
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_page.dart'
    as _i1;
import 'package:quisku_pintar/features/dashboard/presentation/detail_notification/screen/detail_notification_page.dart'
    as _i4;
import 'package:quisku_pintar/features/dashboard/presentation/notification/screen/notification_page.dart'
    as _i8;
import 'package:quisku_pintar/features/home/presentation/screen/home_page.dart'
    as _i6;
import 'package:quisku_pintar/features/mapel/presentation/subpages/detail/screen/detail_mapel_page.dart'
    as _i2;
import 'package:quisku_pintar/features/report_nilai/presentation/detail_nilai/screen/detail_nilai_page.dart'
    as _i3;
import 'package:quisku_pintar/features/report_nilai/presentation/riwayat_konversi/screen/riwayat_konversi_page.dart'
    as _i10;
import 'package:quisku_pintar/features/report_nilai/presentation/transkip_nilai/screen/transkip_nilai_page.dart'
    as _i12;
import 'package:quisku_pintar/features/splash/screen/splash_page.dart' as _i11;
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart'
    as _i17;
import 'package:quisku_pintar/features/ujian/presentation/subpages/detail_ujian/screen/detail_ujian_page.dart'
    as _i5;
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/screen/question_page.dart'
    as _i9;
import 'package:quisku_pintar/features/ujian/presentation/ujian/screen/ujia_page.dart'
    as _i13;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    DetailMapelRoute.name: (routeData) {
      final args = routeData.argsAs<DetailMapelRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailMapelPage(
          data: args.data,
          key: args.key,
        ),
      );
    },
    DetailNilaiRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNilaiRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailNilaiPage(
          key: args.key,
          pelatihan: args.pelatihan,
        ),
      );
    },
    DetailNotificationRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNotificationRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DetailNotificationPage(
          key: args.key,
          title: args.title,
          date: args.date,
        ),
      );
    },
    DetailUjianRoute.name: (routeData) {
      final args = routeData.argsAs<DetailUjianRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DetailUjianPage(
          data: args.data,
          ujianId: args.ujianId,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.HomePage(
          key: args.key,
          currentPage: args.currentPage,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NotificationPage(),
      );
    },
    QuestionRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.QuestionPage(
          key: args.key,
          id: args.id,
          ujianId: args.ujianId,
        ),
      );
    },
    RiwayatKonversiRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RiwayatKonversiPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashPage(),
      );
    },
    TranskipNilaiRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.TranskipNilaiPage(),
      );
    },
    UjianRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.UjianPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i14.PageRouteInfo<void> {
  const DashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailMapelPage]
class DetailMapelRoute extends _i14.PageRouteInfo<DetailMapelRouteArgs> {
  DetailMapelRoute({
    required _i15.Pelajaran data,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          DetailMapelRoute.name,
          args: DetailMapelRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailMapelRoute';

  static const _i14.PageInfo<DetailMapelRouteArgs> page =
      _i14.PageInfo<DetailMapelRouteArgs>(name);
}

class DetailMapelRouteArgs {
  const DetailMapelRouteArgs({
    required this.data,
    this.key,
  });

  final _i15.Pelajaran data;

  final _i16.Key? key;

  @override
  String toString() {
    return 'DetailMapelRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [_i3.DetailNilaiPage]
class DetailNilaiRoute extends _i14.PageRouteInfo<DetailNilaiRouteArgs> {
  DetailNilaiRoute({
    _i16.Key? key,
    required String pelatihan,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          DetailNilaiRoute.name,
          args: DetailNilaiRouteArgs(
            key: key,
            pelatihan: pelatihan,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailNilaiRoute';

  static const _i14.PageInfo<DetailNilaiRouteArgs> page =
      _i14.PageInfo<DetailNilaiRouteArgs>(name);
}

class DetailNilaiRouteArgs {
  const DetailNilaiRouteArgs({
    this.key,
    required this.pelatihan,
  });

  final _i16.Key? key;

  final String pelatihan;

  @override
  String toString() {
    return 'DetailNilaiRouteArgs{key: $key, pelatihan: $pelatihan}';
  }
}

/// generated route for
/// [_i4.DetailNotificationPage]
class DetailNotificationRoute
    extends _i14.PageRouteInfo<DetailNotificationRouteArgs> {
  DetailNotificationRoute({
    _i16.Key? key,
    required String title,
    required String date,
    List<_i14.PageRouteInfo>? children,
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

  static const _i14.PageInfo<DetailNotificationRouteArgs> page =
      _i14.PageInfo<DetailNotificationRouteArgs>(name);
}

class DetailNotificationRouteArgs {
  const DetailNotificationRouteArgs({
    this.key,
    required this.title,
    required this.date,
  });

  final _i16.Key? key;

  final String title;

  final String date;

  @override
  String toString() {
    return 'DetailNotificationRouteArgs{key: $key, title: $title, date: $date}';
  }
}

/// generated route for
/// [_i5.DetailUjianPage]
class DetailUjianRoute extends _i14.PageRouteInfo<DetailUjianRouteArgs> {
  DetailUjianRoute({
    required _i17.Ujian data,
    required int ujianId,
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          DetailUjianRoute.name,
          args: DetailUjianRouteArgs(
            data: data,
            ujianId: ujianId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailUjianRoute';

  static const _i14.PageInfo<DetailUjianRouteArgs> page =
      _i14.PageInfo<DetailUjianRouteArgs>(name);
}

class DetailUjianRouteArgs {
  const DetailUjianRouteArgs({
    required this.data,
    required this.ujianId,
    this.key,
  });

  final _i17.Ujian data;

  final int ujianId;

  final _i16.Key? key;

  @override
  String toString() {
    return 'DetailUjianRouteArgs{data: $data, ujianId: $ujianId, key: $key}';
  }
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i14.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i16.Key? key,
    int? currentPage,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            currentPage: currentPage,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<HomeRouteArgs> page =
      _i14.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.currentPage,
  });

  final _i16.Key? key;

  final int? currentPage;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, currentPage: $currentPage}';
  }
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i14.PageRouteInfo<void> {
  const LoginRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NotificationPage]
class NotificationRoute extends _i14.PageRouteInfo<void> {
  const NotificationRoute({List<_i14.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.QuestionPage]
class QuestionRoute extends _i14.PageRouteInfo<QuestionRouteArgs> {
  QuestionRoute({
    _i16.Key? key,
    required int id,
    required int ujianId,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          QuestionRoute.name,
          args: QuestionRouteArgs(
            key: key,
            id: id,
            ujianId: ujianId,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionRoute';

  static const _i14.PageInfo<QuestionRouteArgs> page =
      _i14.PageInfo<QuestionRouteArgs>(name);
}

class QuestionRouteArgs {
  const QuestionRouteArgs({
    this.key,
    required this.id,
    required this.ujianId,
  });

  final _i16.Key? key;

  final int id;

  final int ujianId;

  @override
  String toString() {
    return 'QuestionRouteArgs{key: $key, id: $id, ujianId: $ujianId}';
  }
}

/// generated route for
/// [_i10.RiwayatKonversiPage]
class RiwayatKonversiRoute extends _i14.PageRouteInfo<void> {
  const RiwayatKonversiRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RiwayatKonversiRoute.name,
          initialChildren: children,
        );

  static const String name = 'RiwayatKonversiRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashPage]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.TranskipNilaiPage]
class TranskipNilaiRoute extends _i14.PageRouteInfo<void> {
  const TranskipNilaiRoute({List<_i14.PageRouteInfo>? children})
      : super(
          TranskipNilaiRoute.name,
          initialChildren: children,
        );

  static const String name = 'TranskipNilaiRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.UjianPage]
class UjianRoute extends _i14.PageRouteInfo<void> {
  const UjianRoute({List<_i14.PageRouteInfo>? children})
      : super(
          UjianRoute.name,
          initialChildren: children,
        );

  static const String name = 'UjianRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
