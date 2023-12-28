import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/features/authentication/bloc/login_bloc.dart';
import 'package:quisku_pintar/features/authentication/presentation/login/widgets/z.dart.dart';

import '../../../../../common/themes/themes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Halo Pandai",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.heading5.setSemiBold(),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "Yuk, Masuk Akun Kamu",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.body2
                            .copyWith(color: AppColors.neutral.ne05),
                      ),
                      const SizedBox(height: 32.0),
                      const EmailInput(),
                      const SizedBox(height: 16.0),
                      // ignore: prefer_const_constructors
                      PasswordInput(),
                      const SizedBox(height: 16.0),
                      const SizedBox(height: 24.0),
                      const LoginEmailPasswordButton(),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
              if (state.status == FormzStatus.submissionInProgress)
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white54,
                  child: const Center(
                      child: CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.white,
                  )),
                ),
            ],
          );
        },
      ),
    );
  }
}
