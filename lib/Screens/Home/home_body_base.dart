import 'package:budgetappproject/ViewModel/SplashCubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBodyBase extends StatelessWidget {
  const HomeBodyBase({super.key, this.bodyWidget, this.appbarTitle});
  final Widget? bodyWidget;
  final String? appbarTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          centerTitle: true,
          title: Text(appbarTitle ?? ""),
          actions: [
            InkWell(
              onTap: () => context.read<SplashCubit>().signOut(),
              child: const Icon(Icons.add),
            ),
          ],
        ),
        bodyWidget ?? Container(),
      ],
    );
  }
}
