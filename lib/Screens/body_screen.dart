import 'package:budgetappproject/Screens/Auth/auth_screen.dart';
import 'package:budgetappproject/Screens/Home/home_screen.dart';
import 'package:budgetappproject/Screens/error_screen.dart';
import 'package:budgetappproject/ViewModel/SplashCubit/splash_cubit.dart';
import 'package:budgetappproject/app/app_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) => setWidget(context, state),
    );
  }

  Widget setWidget(BuildContext context, Object? state) {
    if (state is SplashInitial) {
      return const AppCircularProgressIndicator();
    } else if (state is SplashAuth) {
      return const AuthScreen();
    } else if (state is SplashError) {
      return ErrorScreen(errMessage: state.message);
    } else if (state is SplashHome) {
      return HomeScreen(model: state.user);
    } else if (state is SplashBusy) {
      return const AppCircularProgressIndicator();
    } else {
      return const ErrorScreen(errMessage: "BELİRLENEMEYEN HATA");
    }
  }
}
