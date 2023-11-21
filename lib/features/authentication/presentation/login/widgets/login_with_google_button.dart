import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lxp_mobile/common/extensions/status.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../../../common/gen/assets.gen.dart';
import '../../../../../common/themes/themes.dart';
import '../controllers/bloc/login_bloc.dart';

class LoginWithGoogleButton extends StatelessWidget {
  const LoginWithGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return OutlinedButton.icon(
          onPressed: () {
            FocusScope.of(context).unfocus();

            // if in progress do nothing
            // if (state.loginGoogleStatus.isLoading) return;

            // context
            //     .read<LoginBloc>()
            //     .add(const LoginEvent.loginGooglePressed());
          },
          icon: SizedBox.square(
            dimension: 20,
            child: Assets.icons.google.svg(
              placeholderBuilder: (context) => Image.memory(kTransparentImage),
            ),
          ),
          label: Text(
            state.loginGoogleStatus.isLoading
                ? 'Memproses...'
                : 'Login dengan Google',
            style: TextStyle(color: AppColors.neutral.ne09),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: AppColors.neutral.ne03),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        );
      },
    );
  }
}
