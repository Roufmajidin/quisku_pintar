// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:quisku_pintar/features/authentication/presentation/login/screen/login_page.dart'
    as _i5;
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_page.dart'
    as _i1;
import 'package:quisku_pintar/features/dashboard/presentation/detail_notification/screen/detail_notification_page.dart'
    as _i2;
import 'package:quisku_pintar/features/dashboard/presentation/notification/screen/notification_page.dart'
    as _i6;
import 'package:quisku_pintar/features/home/presentation/screen/home_page.dart'
    as _i4;
import 'package:quisku_pintar/features/splash/screen/splash_page.dart' as _i7;
import 'package:quisku_pintar/features/ujian/data/models/ujian_models.dart'
    as _i11;
import 'package:quisku_pintar/features/ujian/presentation/subpages/detail_pelatihan/screen/detail_ujian_page.dart'
    as _i3;
import 'package:quisku_pintar/features/ujian/presentation/ujian/screen/ujia_page.dart'
    as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    DetailNotificationRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNotificationRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailNotificationPage(
          key: args.key,
          title: args.title,
          date: args.date,
        ),
      );
    },
    DetailUjianRoute.name: (routeData) {
      final args = routeData.argsAs<DetailUjianRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailUjianPage(
          data: args.data,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NotificationPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashPage(),
      );
    },
    UjianRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.UjianPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailNotificationPage]
class DetailNotificationRoute
    extends _i9.PageRouteInfo<DetailNotificationRouteArgs> {
  DetailNotificationRoute({
    _i10.Key? key,
    required String title,
    required String date,
    List<_i9.PageRouteInfo>? children,
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

  static const _i9.PageInfo<DetailNotificationRouteArgs> page =
      _i9.PageInfo<DetailNotificationRouteArgs>(name);
}

class DetailNotificationRouteArgs {
  const DetailNotificationRouteArgs({
    this.key,
    required this.title,
    required this.date,
  });

  final _i10.Key? key;

  final String title;

  final String date;

  @override
  String toString() {
    return 'DetailNotificationRouteArgs{key: $key, title: $title, date: $date}';
  }
}

/// generated route for
/// [_i3.DetailUjianPage]
class DetailUjianRoute extends _i9.PageRouteInfo<DetailUjianRouteArgs> {
  DetailUjianRoute({
    required _i11.Ujian data,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DetailUjianRoute.name,
          args: DetailUjianRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailUjianRoute';

  static const _i9.PageInfo<DetailUjianRouteArgs> page =
      _i9.PageInfo<DetailUjianRouteArgs>(name);
}

class DetailUjianRouteArgs {
  const DetailUjianRouteArgs({
    required this.data,
    this.key,
  });

  final _i11.Ujian data;

  final _i10.Key? key;

  @override
  String toString() {
    return 'DetailUjianRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NotificationPage]
class NotificationRoute extends _i9.PageRouteInfo<void> {
  const NotificationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.UjianPage]
class UjianRoute extends _i9.PageRouteInfo<void> {
  const UjianRoute({List<_i9.PageRouteInfo>? children})
      : super(
          UjianRoute.name,
          initialChildren: children,
        );

  static const String name = 'UjianRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
