import 'package:budgetappproject/Screens/Auth/SignIn/sign_in_form_view.dart';
import 'package:budgetappproject/Screens/error_screen.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/SignInCubit/sign_in_cubit.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/auth_cubit.dart';
import 'package:budgetappproject/app/app_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      builder: (context, state) => _buildSignIn(context, state),
    );
  }

  _buildSignIn(BuildContext context, SignInState state) {
    if (state is SignInForm) {
      return const SignInFormView();
    } else if (state is SignInBusy) {
      return const AppCircularProgressIndicator();
    } else if (state is SignInError) {
      return ErrorScreen(
        errMessage: state.message!,
        goBack: () => context.read<SignInCubit>().goForm(),
      );
    } else if (state is SignInSuccesful) {
      context.read<AuthCubit>().onLogin(state.user);
      return const ErrorScreen(
          errMessage: "Giriş Başarılı.ANA SAYFA YÜKLENEMEDİ");
    }
  }
}
