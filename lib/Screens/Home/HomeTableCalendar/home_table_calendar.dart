import 'package:budgetappproject/ViewModel/HomeCubit/TableCubit/table_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeTableCalendar extends StatelessWidget {
  const HomeTableCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime(2000),
      lastDay: DateTime(2050),
      onDaySelected: (selectedDay, focusedDay) =>
          context.read<TableCubit>().onDaySelected(selectedDay, focusedDay),
    );
  }
}
