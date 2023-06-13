import 'package:budgetappproject/Model/budget_model.dart';
import 'package:budgetappproject/ViewModel/HomeCubit/DayCubit/day_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DayBodyView extends StatelessWidget {
  const DayBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DayCubit>();
    var budgetList = cubit.getBudgetList();
    return budgetList != null ? ListView.builder(
      shrinkWrap: true,
      itemCount: budgetList.length,
      itemBuilder: (context, index) => _getBudgetCard(context, budgetList[index]),
    ) : const Center(child: Text("veri yok"),);
  }

  _getBudgetCard(BuildContext context, BudgetModel budgetModel) {
    return ListTile(
      title: Text(budgetModel.title),
      subtitle: Text(budgetModel.detail),

    );
  }
  
}
