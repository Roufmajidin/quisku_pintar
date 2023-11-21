import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: SplashRoute.page,
          initial: true,
          path: '/',
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        AutoRoute(page: LoginRoute.page, path: '/authentication/login'),
        AutoRoute(page: HomeRoute.page, path: '/beranda'),
        AutoRoute(page: DashboardRoute.page, path: '/dashboard'),
        AutoRoute(page: NotificationRoute.page, path: '/notification'),
        AutoRoute(
            page: DetailNotificationRoute.page, path: '/detail-notification'),
      ];
}
