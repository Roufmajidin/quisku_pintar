import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/shared/independent/text_field.dart';
import '../../bloc/login_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return KgTextField(
          labelText: 'Nama Lengkap',
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChanged(value));
          },
          errorText:
              state.email.invalid ? 'Masukkan Email (@) dengan benar ' : null,
        );
      },
    );
  }
}
