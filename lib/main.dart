import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';

import 'common/themes/themes.dart';
// import 'core/injection/di.dart' as di;
// import 'core/error/utils/endpoints.dart';
import 'core/navigation/navigation.dart';

void main() async {
  await setupDependency();

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Quisku Pintar',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      routerConfig: _appRouter.config(),
    );
  }
}
