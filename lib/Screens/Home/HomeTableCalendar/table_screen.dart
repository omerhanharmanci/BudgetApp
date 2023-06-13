import 'package:budgetappproject/Screens/Home/HomeTableCalendar/table_view.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/TableCubit/table_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TableCubit(),
      child: const TableView(),
    );
  }
}
