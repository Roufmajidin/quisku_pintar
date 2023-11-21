import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/shared/independent/text_field.dart';
import 'package:quisku_pintar/features/authentication/presentation/login/widgets/forgot_password_button.dart';

import '../../../../../common/themes/themes.dart';
import '../controllers/bloc/login_bloc.dart';
import '../widgets/login_email_password_button.dart';
import '../widgets/login_with_google_button.dart';
import '../widgets/register_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(
                16.0,
                32.0,
                16.0,
                16.0,
              ),
              children: [
                Text(
                  "Masuk",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.heading5.setSemiBold(),
                ),
                const SizedBox(height: 8.0),
                Text(
                  "Masukkan Akun Kamu",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.body2
                      .copyWith(color: AppColors.neutral.ne05),
                ),
                const SizedBox(height: 32.0),
                KgTextField(
                  labelText: 'Nama Lengkap',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 16.0),
                KgTextField(
                  labelText: 'Kata Sandi',
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    focusNode: FocusNode(skipTraversal: true), // skip focus
                    color: AppColors.neutral.ne04,
                    iconSize: 20.0,
                    icon: const Icon(
                      Icons.visibility_off_rounded,
                    ),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 16.0),
                const ForgotPasswordButton(),
                const SizedBox(height: 24.0),
                const LoginEmailPasswordButton(),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        endIndent: 8.0,
                        color: AppColors.neutral.ne03,
                      ),
                    ),
                    Text(
                      'Atau Login Dengan',
                      style: AppTextStyle.body4
                          .setMedium()
                          .copyWith(color: AppColors.neutral.ne07),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 8.0,
                        color: AppColors.neutral.ne03,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const LoginWithGoogleButton(),
                const SizedBox(height: 32.0),
                const RegisterButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
