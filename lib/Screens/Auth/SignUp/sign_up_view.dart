import 'package:budgetappproject/Screens/Auth/SignUp/sign_up_form_view.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/SignUpCubit/sign_up_cubit.dart';
import 'package:budgetappproject/app/app_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ViewModel/AuthCubit/auth_cubit.dart';
import '../../error_screen.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) => _buildSignUp(context, state),
    );
  }

  _buildSignUp(BuildContext context, SignUpState state) {
    if (state is SignUpForm) {
      return const SignUpFormView();
    } else if (state is SignUpBusy) {
      return const AppCircularProgressIndicator();
    } else if (state is SignUpError) {
      return ErrorScreen(
        errMessage: state.message!,
        goBack: () => context.read<SignUpCubit>().goForm(),
      );
    } else if (state is SignUpSuccesful) {
      context.read<AuthCubit>().onLogin(state.user);
      return const ErrorScreen(
          errMessage: "Kayıt Başarılı.ANA SAYFA YÜKLENEMEDİ");
    }
  }
}
