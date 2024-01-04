import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/features/authentication/bloc/login_bloc.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        // if (state.user == null) {
        //
        //   // return CircularProgressIndicator();
        // }
        return Stack(
          children: [
            Container(
              alignment: Alignment.center,
              color: AppColors.primary.pr10,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 64, 16, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          // backgroundColor: Colors.yellow,
                          radius: 25,
                          child: Image.asset(
                            'assets/images/avatar.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Halo',
                              style: AppTextStyle.body3
                                  .copyWith(color: AppColors.neutral.ne01)
                                  .setRegular(),
                            ),
                            state.status == FormzStatus.submissionInProgress ||
                                    state.user == null
                                ? state.status == FormzStatus.submissionFailure
                                    ? const SizedBox()
                                    : SizedBox(
                                        height: 15,
                                        width: 15,
                                        child: CircularProgressIndicator(
                                          color: AppColors.neutral.ne01,
                                        ),
                                      )
                                : Text(
                                    state.user?.name ?? 'load',
                                    style: AppTextStyle.body2
                                        .copyWith(color: AppColors.neutral.ne01)
                                        .setMedium(),
                                  ),
                          ],
                        ),
                        const Spacer(),
                        // Assets.icons.search.svg(width: 30),
                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                            onTap: () {
                              context
                                  .read<LoginBloc>()
                                  .add(const LoginEvent.logout());
                              // context.router.push(const NotificationRoute());
                            },
                            child:
                                state.status == FormzStatus.submissionInProgress
                                    ? const SizedBox(
                                        height: 30,
                                        child: CircularProgressIndicator(),
                                      )
                                    : Icon(
                                        Icons.exit_to_app,
                                        color: AppColors.neutral.ne01,
                                      )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
