import 'package:budgetappproject/Screens/Home/Day/day_screen.dart';
import 'package:budgetappproject/Screens/Home/HomeTableCalendar/table_screen.dart';
import 'package:budgetappproject/Screens/Home/home_body_base.dart';
import 'package:budgetappproject/Screens/error_screen.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => _buildHomeBody(context, state),
    );
  }

  _buildHomeBody(BuildContext context, HomeState state) {
    if (state is HomeTable) {
      return const HomeBodyBase(bodyWidget: TableScreen());
    } else if (state is HomeSelectedDay) {
      return HomeBodyBase(
        appbarTitle: state.selectedDay.toString(),
        bodyWidget: DayScreen(
          selectedDay: state.focusedDay,
          focusedDay: state.focusedDay,
        ),
      );
    } else if (state is HomeError) {
      return ErrorScreen(errMessage: state.message!);
    }
  }
}
