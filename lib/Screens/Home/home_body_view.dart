import 'package:budgetappproject/ViewModel/SplashCubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              const Text("ANASAYFA"),
              InkWell(
                onTap: () => context.read<SplashCubit>().signOut(),
                child: const Icon(Icons.exit_to_app_outlined),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 200,
        ),
      ],
    );
  }
}
