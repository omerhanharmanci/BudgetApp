

import 'package:budgetappproject/Screens/body_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BodyScreen(),
      ),
    );
  }
}