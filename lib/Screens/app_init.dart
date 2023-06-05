
import 'package:budgetappproject/Screens/splash_screen.dart';
import 'package:budgetappproject/ViewModel/SplashCubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppInit extends StatelessWidget {
  const AppInit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit(),
      child: const SplashScreen(),
    );
  }
}
