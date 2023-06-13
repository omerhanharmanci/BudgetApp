import 'package:budgetappproject/Screens/Home/Day/day_view.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/DayCubit/day_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DayScreen extends StatelessWidget {
  const DayScreen(
      {super.key, required this.selectedDay, required this.focusedDay});
  final DateTime selectedDay;
  final DateTime focusedDay;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DayCubit>(
      create: (context) => DayCubit(selectedDay, focusedDay),
      child: const DayView(),
    );
  }
}
