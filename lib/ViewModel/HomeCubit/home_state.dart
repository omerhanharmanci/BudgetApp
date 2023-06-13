part of 'home_cubit.dart';

abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeTable extends HomeState {
  const HomeTable();
}

class HomeSelectedDay extends HomeState {
  final DateTime selectedDay;
  final DateTime focusedDay;
  const HomeSelectedDay(this.selectedDay, this.focusedDay);
}

class HomeError extends HomeState {
  final String? message;
  const HomeError(this.message);
}
