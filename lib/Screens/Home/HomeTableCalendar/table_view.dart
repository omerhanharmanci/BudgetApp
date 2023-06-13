
import 'package:budgetappproject/Screens/Home/HomeTableCalendar/home_table_calendar.dart';
import 'package:budgetappproject/Screens/error_screen.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/TableCubit/table_cubit.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableCubit, TableState>(
      builder: (context, state) => _buildTable(context, state),
    );
  }

  _buildTable(BuildContext context, TableState state) {
    if (state is TableViewState) {
      return const HomeTableCalendar();
    } else if (state is TableError) {
      return ErrorScreen(errMessage: state.message!);
    } else if (state is TableSelectDay) {
      context.read<HomeCubit>().goSelectedDay(state.selectedDay,state.focusedDay);
      return const ErrorScreen(errMessage: "SEÇİLEN GÜN AÇILAMADI");
    } else {
      return const ErrorScreen(errMessage: "SAYFA YÜKLENEMEDİ");
    }
  }
}
