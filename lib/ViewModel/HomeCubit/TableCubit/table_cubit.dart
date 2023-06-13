import 'package:flutter_bloc/flutter_bloc.dart';

part 'table_state.dart';

class TableCubit extends Cubit<TableState> {
  TableCubit() : super(const TableInitial()) {
    _tableInit();
  }

  void _tableInit() async {
    emit(const TableViewState());
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    emit(TableSelectDay(selectedDay, focusedDay));
  }
}
