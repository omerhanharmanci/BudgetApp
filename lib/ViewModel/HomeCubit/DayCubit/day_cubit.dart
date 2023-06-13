import 'package:budgetappproject/Model/budget_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'day_state.dart';

class DayCubit extends Cubit<DayState> {
  DayCubit(this.selectedDay, this.focusedDay) : super(const DayInitial()) {
    _dayInit();
  }
  final DateTime selectedDay;
  final DateTime focusedDay;

  void _dayInit() async {
    emit(const DayViewState());
  }

  List<BudgetModel>? getBudgetList() {
    return [
      BudgetModel("DENEME1", "deneme1", 15000, selectedDay),
      BudgetModel("DENEME2", "deneme2", 15000, selectedDay),
      BudgetModel("DENEME3", "deneme3", 15000, selectedDay),
      BudgetModel("DENEME4", "deneme4", 15000, selectedDay),
    ];
  }
}
