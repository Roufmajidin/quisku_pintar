// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i17;
import 'package:quisku_pintar/features/authentication/presentation/login/screen/login_page.dart'
    as _i7;
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart'
    as _i16;
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
import 'package:quisku_pintar/features/mapel/presentation/subpages/lihat_materi/screen/readpdf_page.dart'
    as _i10;
import 'package:quisku_pintar/features/report_nilai/presentation/detail_nilai/screen/detail_nilai_page.dart'
    as _i3;
import 'package:quisku_pintar/features/report_nilai/presentation/riwayat_konversi/screen/riwayat_konversi_page.dart'
    as _i11;
import 'package:quisku_pintar/features/report_nilai/presentation/transkip_nilai/screen/transkip_nilai_page.dart'
    as _i13;
import 'package:quisku_pintar/features/splash/screen/splash_page.dart' as _i12;
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart'
    as _i18;
import 'package:quisku_pintar/features/ujian/presentation/subpages/detail_ujian/screen/detail_ujian_page.dart'
    as _i5;
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/screen/question_page.dart'
    as _i9;
import 'package:quisku_pintar/features/ujian/presentation/ujian/screen/ujia_page.dart'
    as _i14;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    DetailMapelRoute.name: (routeData) {
      final args = routeData.argsAs<DetailMapelRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailMapelPage(
          data: args.data,
          key: args.key,
        ),
      );
    },
    DetailNilaiRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNilaiRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailNilaiPage(
          key: args.key,
          pelatihan: args.pelatihan,
        ),
      );
    },
    DetailNotificationRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNotificationRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
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
      return _i15.AutoRoutePage<dynamic>(
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
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.HomePage(
          key: args.key,
          currentPage: args.currentPage,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NotificationPage(),
      );
    },
    QuestionRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.QuestionPage(
          key: args.key,
          id: args.id,
          ujianId: args.ujianId,
        ),
      );
    },
    ReadPdfRoute.name: (routeData) {
      final args = routeData.argsAs<ReadPdfRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ReadPdfPage(
          key: args.key,
          pdfLink: args.pdfLink,
        ),
      );
    },
    RiwayatKonversiRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RiwayatKonversiPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SplashPage(),
      );
    },
    TranskipNilaiRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.TranskipNilaiPage(),
      );
    },
    UjianRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.UjianPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i15.PageRouteInfo<void> {
  const DashboardRoute({List<_i15.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailMapelPage]
class DetailMapelRoute extends _i15.PageRouteInfo<DetailMapelRouteArgs> {
  DetailMapelRoute({
    required _i16.Pelajaran data,
    _i17.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          DetailMapelRoute.name,
          args: DetailMapelRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailMapelRoute';

  static const _i15.PageInfo<DetailMapelRouteArgs> page =
      _i15.PageInfo<DetailMapelRouteArgs>(name);
}

class DetailMapelRouteArgs {
  const DetailMapelRouteArgs({
    required this.data,
    this.key,
  });

  final _i16.Pelajaran data;

  final _i17.Key? key;

  @override
  String toString() {
    return 'DetailMapelRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [_i3.DetailNilaiPage]
class DetailNilaiRoute extends _i15.PageRouteInfo<DetailNilaiRouteArgs> {
  DetailNilaiRoute({
    _i17.Key? key,
    required String pelatihan,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          DetailNilaiRoute.name,
          args: DetailNilaiRouteArgs(
            key: key,
            pelatihan: pelatihan,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailNilaiRoute';

  static const _i15.PageInfo<DetailNilaiRouteArgs> page =
      _i15.PageInfo<DetailNilaiRouteArgs>(name);
}

class DetailNilaiRouteArgs {
  const DetailNilaiRouteArgs({
    this.key,
    required this.pelatihan,
  });

  final _i17.Key? key;

  final String pelatihan;

  @override
  String toString() {
    return 'DetailNilaiRouteArgs{key: $key, pelatihan: $pelatihan}';
  }
}

/// generated route for
/// [_i4.DetailNotificationPage]
class DetailNotificationRoute
    extends _i15.PageRouteInfo<DetailNotificationRouteArgs> {
  DetailNotificationRoute({
    _i17.Key? key,
    required String title,
    required String date,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<DetailNotificationRouteArgs> page =
      _i15.PageInfo<DetailNotificationRouteArgs>(name);
}

class DetailNotificationRouteArgs {
  const DetailNotificationRouteArgs({
    this.key,
    required this.title,
    required this.date,
  });

  final _i17.Key? key;

  final String title;

  final String date;

  @override
  String toString() {
    return 'DetailNotificationRouteArgs{key: $key, title: $title, date: $date}';
  }
}

/// generated route for
/// [_i5.DetailUjianPage]
class DetailUjianRoute extends _i15.PageRouteInfo<DetailUjianRouteArgs> {
  DetailUjianRoute({
    required _i18.Ujian data,
    required int ujianId,
    _i17.Key? key,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<DetailUjianRouteArgs> page =
      _i15.PageInfo<DetailUjianRouteArgs>(name);
}

class DetailUjianRouteArgs {
  const DetailUjianRouteArgs({
    required this.data,
    required this.ujianId,
    this.key,
  });

  final _i18.Ujian data;

  final int ujianId;

  final _i17.Key? key;

  @override
  String toString() {
    return 'DetailUjianRouteArgs{data: $data, ujianId: $ujianId, key: $key}';
  }
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i15.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i17.Key? key,
    int? currentPage,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            currentPage: currentPage,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<HomeRouteArgs> page =
      _i15.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.currentPage,
  });

  final _i17.Key? key;

  final int? currentPage;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, currentPage: $currentPage}';
  }
}

/// generated route for
/// [_i7.LoginPage]
class LoginRoute extends _i15.PageRouteInfo<void> {
  const LoginRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NotificationPage]
class NotificationRoute extends _i15.PageRouteInfo<void> {
  const NotificationRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.QuestionPage]
class QuestionRoute extends _i15.PageRouteInfo<QuestionRouteArgs> {
  QuestionRoute({
    _i17.Key? key,
    required int id,
    required int ujianId,
    List<_i15.PageRouteInfo>? children,
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

  static const _i15.PageInfo<QuestionRouteArgs> page =
      _i15.PageInfo<QuestionRouteArgs>(name);
}

class QuestionRouteArgs {
  const QuestionRouteArgs({
    this.key,
    required this.id,
    required this.ujianId,
  });

  final _i17.Key? key;

  final int id;

  final int ujianId;

  @override
  String toString() {
    return 'QuestionRouteArgs{key: $key, id: $id, ujianId: $ujianId}';
  }
}

/// generated route for
/// [_i10.ReadPdfPage]
class ReadPdfRoute extends _i15.PageRouteInfo<ReadPdfRouteArgs> {
  ReadPdfRoute({
    _i17.Key? key,
    required String pdfLink,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ReadPdfRoute.name,
          args: ReadPdfRouteArgs(
            key: key,
            pdfLink: pdfLink,
          ),
          initialChildren: children,
        );

  static const String name = 'ReadPdfRoute';

  static const _i15.PageInfo<ReadPdfRouteArgs> page =
      _i15.PageInfo<ReadPdfRouteArgs>(name);
}

class ReadPdfRouteArgs {
  const ReadPdfRouteArgs({
    this.key,
    required this.pdfLink,
  });

  final _i17.Key? key;

  final String pdfLink;

  @override
  String toString() {
    return 'ReadPdfRouteArgs{key: $key, pdfLink: $pdfLink}';
  }
}

/// generated route for
/// [_i11.RiwayatKonversiPage]
class RiwayatKonversiRoute extends _i15.PageRouteInfo<void> {
  const RiwayatKonversiRoute({List<_i15.PageRouteInfo>? children})
      : super(
          RiwayatKonversiRoute.name,
          initialChildren: children,
        );

  static const String name = 'RiwayatKonversiRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SplashPage]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.TranskipNilaiPage]
class TranskipNilaiRoute extends _i15.PageRouteInfo<void> {
  const TranskipNilaiRoute({List<_i15.PageRouteInfo>? children})
      : super(
          TranskipNilaiRoute.name,
          initialChildren: children,
        );

  static const String name = 'TranskipNilaiRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.UjianPage]
class UjianRoute extends _i15.PageRouteInfo<void> {
  const UjianRoute({List<_i15.PageRouteInfo>? children})
      : super(
          UjianRoute.name,
          initialChildren: children,
        );

  static const String name = 'UjianRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
