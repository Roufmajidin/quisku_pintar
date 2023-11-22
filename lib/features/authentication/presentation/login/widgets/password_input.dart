import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/shared/independent/text_field.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

import '../../bloc/login_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.hidePassword != current.hidePassword,
      builder: (context, state) {
        return KgTextField(
          labelText: 'Kata Sandi',
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          obscureText: state.hidePassword ? false : true,
          suffixIcon: IconButton(
            onPressed: () {
              context.read<LoginBloc>().add(const HiddenPassword());
            },
            focusNode: FocusNode(skipTraversal: true), // skip focus
            color: AppColors.neutral.ne04,
            iconSize: 20.0,
            icon: Icon(
              state.hidePassword
                  ? Icons.visibility
                  : Icons.visibility_off_rounded,
            ),
          ),
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChanged(value));
          },
          errorText:
              state.password.invalid ? 'Masukkan password dengan benar' : null,
        );
      },
    );
  }
}
