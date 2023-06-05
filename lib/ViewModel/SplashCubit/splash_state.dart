part of 'splash_cubit.dart';

abstract class SplashState {
  const SplashState();
}

class SplashInitial extends SplashState {
  const SplashInitial();
}

class SplashAuth extends SplashState {
  const SplashAuth();
}

class SplashHome extends SplashState {
  final ApiUserModel user;
  const SplashHome(this.user);
}

class SplashBusy extends SplashState{
  const SplashBusy();
}

class SplashError extends SplashState {
  final String message;
  
  const SplashError(this.message);
}
