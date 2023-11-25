// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:quisku_pintar/features/authentication/presentation/login/screen/login_page.dart'
    as _i4;
import 'package:quisku_pintar/features/dashboard/presentation/dashboard/screen/dashboard_page.dart'
    as _i1;
import 'package:quisku_pintar/features/dashboard/presentation/detail_notification/screen/detail_notification_page.dart'
    as _i2;
import 'package:quisku_pintar/features/dashboard/presentation/notification/screen/notification_page.dart'
    as _i5;
import 'package:quisku_pintar/features/home/presentation/screen/home_page.dart'
    as _i3;
import 'package:quisku_pintar/features/splash/screen/splash_page.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    DetailNotificationRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNotificationRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailNotificationPage(
          key: args.key,
          title: args.title,
          date: args.date,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(key: args.key),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NotificationPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailNotificationPage]
class DetailNotificationRoute
    extends _i7.PageRouteInfo<DetailNotificationRouteArgs> {
  DetailNotificationRoute({
    _i8.Key? key,
    required String title,
    required String date,
    List<_i7.PageRouteInfo>? children,
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

  static const _i7.PageInfo<DetailNotificationRouteArgs> page =
      _i7.PageInfo<DetailNotificationRouteArgs>(name);
}

class DetailNotificationRouteArgs {
  const DetailNotificationRouteArgs({
    this.key,
    required this.title,
    required this.date,
  });

  final _i8.Key? key;

  final String title;

  final String date;

  @override
  String toString() {
    return 'DetailNotificationRouteArgs{key: $key, title: $title, date: $date}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<LoginRouteArgs> page =
      _i7.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.NotificationPage]
class NotificationRoute extends _i7.PageRouteInfo<void> {
  const NotificationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
