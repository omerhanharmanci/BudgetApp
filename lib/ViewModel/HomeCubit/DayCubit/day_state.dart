part of 'day_cubit.dart';

abstract class DayState {
  const DayState();
}

class DayInitial extends DayState {
  const DayInitial();
}

class DayViewState extends DayState {
  const DayViewState();
}

class DayError extends DayState {
  final String? message;
  const DayError(this.message);
}

class DayBusy extends DayState {
  const DayBusy();
}
