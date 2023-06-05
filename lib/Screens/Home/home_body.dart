import 'package:budgetappproject/Screens/Home/home_body_view.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return const HomeBodyView();
      },
    );
  }
}
