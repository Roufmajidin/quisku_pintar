import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/core/navigation/app_router.gr.dart';

class LoginEmailPasswordButton extends StatelessWidget {
  const LoginEmailPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        FocusScope.of(context).unfocus();
        context.pushRoute(const HomeRoute());

        // if (!state.isValid) return; // if invalid do nothing
        // if in progress do nothing
        // if (state.loginStatus.isInProgress) return;

        // context.read<LoginBloc>().add(const LoginEvent.submitLoginPressed());
      },
      child: /* state.loginStatus.isInProgress
              ? const SizedBox.square(
                  dimension: 20.0,
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ))
              :  */
          const Text('Masuk'),
    );
  }
}
