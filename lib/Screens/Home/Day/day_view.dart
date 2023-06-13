import 'package:budgetappproject/Screens/Home/Day/day_body_view.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/DayCubit/day_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DayView extends StatelessWidget {
  const DayView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DayCubit, DayState>(
      builder: (context, state) => _buildDay(context, state),
    );
  }

  _buildDay(BuildContext context, DayState state) {
    return const DayBodyView();
  }
}
