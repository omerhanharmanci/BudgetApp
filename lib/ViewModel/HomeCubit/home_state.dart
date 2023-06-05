part of 'home_cubit.dart';

abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeError extends HomeState {
  final String? message;
  const HomeError(this.message);
}
