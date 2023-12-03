// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:quisku_pintar/features/acara_unik/presentation/acara_unik/screen/ujia_page.dart'
    as _i8;
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/screen/detail_acara_page.dart'
    as _i2;
import 'package:quisku_pintar/features/acara_unik/presentation/webinar/screen/webinar_page.dart'
    as _i9;
import 'package:quisku_pintar/features/acara_unik/presentation/workshop/screen/workshop_page.dart'
    as _i10;
import 'package:quisku_pintar/features/authentication/presentation/login/screen/login_page.dart'
    as _i5;
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_page.dart'
    as _i1;
import 'package:quisku_pintar/features/dashboard/presentation/detail_notification/screen/detail_notification_page.dart'
    as _i3;
import 'package:quisku_pintar/features/dashboard/presentation/notification/screen/notification_page.dart'
    as _i6;
import 'package:quisku_pintar/features/home/presentation/screen/home_page.dart'
    as _i4;
import 'package:quisku_pintar/features/splash/screen/splash_page.dart' as _i7;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    DetailAcaraRoute.name: (routeData) {
      final args = routeData.argsAs<DetailAcaraRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailAcaraPage(
          title: args.title,
          key: args.key,
        ),
      );
    },
    DetailNotificationRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNotificationRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailNotificationPage(
          key: args.key,
          title: args.title,
          date: args.date,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NotificationPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashPage(),
      );
    },
    UjianRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.UjianPage(),
      );
    },
    WebinarRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.WebinarPage(),
      );
    },
    WorkshopRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.WorkshopPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i11.PageRouteInfo<void> {
  const DashboardRoute({List<_i11.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailAcaraPage]
class DetailAcaraRoute extends _i11.PageRouteInfo<DetailAcaraRouteArgs> {
  DetailAcaraRoute({
    required String title,
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          DetailAcaraRoute.name,
          args: DetailAcaraRouteArgs(
            title: title,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailAcaraRoute';

  static const _i11.PageInfo<DetailAcaraRouteArgs> page =
      _i11.PageInfo<DetailAcaraRouteArgs>(name);
}

class DetailAcaraRouteArgs {
  const DetailAcaraRouteArgs({
    required this.title,
    this.key,
  });

  final String title;

  final _i12.Key? key;

  @override
  String toString() {
    return 'DetailAcaraRouteArgs{title: $title, key: $key}';
  }
}

/// generated route for
/// [_i3.DetailNotificationPage]
class DetailNotificationRoute
    extends _i11.PageRouteInfo<DetailNotificationRouteArgs> {
  DetailNotificationRoute({
    _i12.Key? key,
    required String title,
    required String date,
    List<_i11.PageRouteInfo>? children,
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

  static const _i11.PageInfo<DetailNotificationRouteArgs> page =
      _i11.PageInfo<DetailNotificationRouteArgs>(name);
}

class DetailNotificationRouteArgs {
  const DetailNotificationRouteArgs({
    this.key,
    required this.title,
    required this.date,
  });

  final _i12.Key? key;

  final String title;

  final String date;

  @override
  String toString() {
    return 'DetailNotificationRouteArgs{key: $key, title: $title, date: $date}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NotificationPage]
class NotificationRoute extends _i11.PageRouteInfo<void> {
  const NotificationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.UjianPage]
class UjianRoute extends _i11.PageRouteInfo<void> {
  const UjianRoute({List<_i11.PageRouteInfo>? children})
      : super(
          UjianRoute.name,
          initialChildren: children,
        );

  static const String name = 'UjianRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.WebinarPage]
class WebinarRoute extends _i11.PageRouteInfo<void> {
  const WebinarRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WebinarRoute.name,
          initialChildren: children,
        );

  static const String name = 'WebinarRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.WorkshopPage]
class WorkshopRoute extends _i11.PageRouteInfo<void> {
  const WorkshopRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WorkshopRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorkshopRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
