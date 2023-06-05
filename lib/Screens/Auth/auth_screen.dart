
import 'package:budgetappproject/Screens/Auth/SignIn/sign_in_screen.dart';
import 'package:budgetappproject/Screens/Auth/SignUp/sign_up_screen.dart';
import 'package:budgetappproject/Screens/error_screen.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/auth_cubit.dart';
import 'package:budgetappproject/ViewModel/SplashCubit/splash_cubit.dart';
import 'package:budgetappproject/app/app_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: _buildView(),
    );
  }


  _buildView() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthInitial) {
          return const AppCircularProgressIndicator();
        } else if (state is AuthSignUp) {
          return const SignUpScreen();
        } else if (state is AuthError) {
          return ErrorScreen(errMessage: state.message,);
        } else if (state is AuthSignIn) {
          return const SignInScreen();
        } else if (state is AuthBusy) {
          return const AppCircularProgressIndicator();
        } else if (state is AuthSuccesful) {
          final user = state.userModel;
          context.read<SplashCubit>().succesfulLogin(user);
          return const ErrorScreen(
              errMessage: "GİRİŞ BAŞARILI HOME YÜKLENEMEDİ");
        } else {
          return const Text("giriş başarılı");
        }
      },
    );
  }
}
