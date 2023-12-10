import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:quisku_pintar/core/helpers/show_snackbar_helper.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';
import 'package:quisku_pintar/core/utils/enums.dart';

import 'package:quisku_pintar/features/authentication/bloc/login_bloc.dart';

class LoginEmailPasswordButton extends StatelessWidget {
  const LoginEmailPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ShowSnackBarHelper.show(context,
              message: state.errorMessages, snackBarType: SnackBarType.warning);
        }
        if (state.status.isSubmissionSuccess) {
          ShowSnackBarHelper.show(
            context,
            message: 'Sukses Login',
            snackBarType: SnackBarType.success,
          );
          context.router
              .pushAndPopUntil(const HomeRoute(), predicate: (_) => false);
        }
      },
      builder: (context, state) {
        return FilledButton(
          style: const ButtonStyle(),
          onPressed: () {
            // FocusScope.of(context).unfocus();
            // log(state.status.isValid.toString());
            context.read<LoginBloc>().add(const LoginEvent.submit());
            // state.status.isValidated
            //     ? () =>
            //     : null;
          },
          child: /* state.loginStatus.isInProgress
                  ? const SizedBox.square(
                      dimension: 20.0,
                      child: CircularProgressIndicator.adaptive(
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ))
                  :  */
              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: const Text('Masuk'),
          ),
        );
      },
    );
  }
}
