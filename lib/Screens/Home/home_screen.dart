import 'package:budgetappproject/Model/api_user_model.dart';
import 'package:budgetappproject/Screens/Home/home_body.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.model});
  final ApiUserModel model;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(model),
      child: const HomeBody(),
    );
  }
}
