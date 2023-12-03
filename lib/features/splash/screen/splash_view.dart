import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/navigation/app_router.gr.dart';
import '../splash_cubit/splash_cubit.dart';

// import '../../../core/injection/di.dart';
// import '../../authentication/domain/usecases/login_email_password_usecase.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textStyle =
        AppTextStyle.body4.copyWith(color: AppColors.neutral.ne05);
    return Scaffold(
        body: BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        log(' state view ${state.authenticated}');
        if (state.authenticated == false) {
          //   context.router.pushAndPopUntil(
          //     const LoginRoute(),
          //     predicate: (_) => false,
          //   );
          // } else {
          //   context.router.pushAndPopUntil(
          //     const HomeRoute(),
          //     predicate: (_) => true,
          //   );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '',
                style: textStyle,
              ),

              Assets.images.lxpLogo.image(width: size.width * 0.5),
              const Center(
                child: CircularProgressIndicator.adaptive(),
              ),

              // app version

              BlocBuilder<SplashCubit, SplashState>(
                builder: (context, state) {
                  return Text(
                    state.appVersion ?? 'V1.0.0',
                    style: textStyle,
                  );
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}
