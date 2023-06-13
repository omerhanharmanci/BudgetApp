part of 'table_cubit.dart';

abstract class TableState {
  const TableState();
}

class TableInitial extends TableState {
  const TableInitial();
}

class TableViewState extends TableState{
  const TableViewState();
}

class TableError extends TableState {
  final String? message;
  const TableError(this.message);
}

class TableSelectDay extends TableState {
  final DateTime selectedDay;
  final DateTime focusedDay;

  const TableSelectDay(this.selectedDay, this.focusedDay);
}
