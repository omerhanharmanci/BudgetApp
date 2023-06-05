part of 'sign_in_cubit.dart';

abstract class SignInState {
  const SignInState();
}

class SignInInitial extends SignInState {
  const SignInInitial();
}

class SignInForm extends SignInState {
  const SignInForm();
}

class SignInError extends SignInState {
  final String? message;
  const SignInError(this.message);
}

class SignInBusy extends SignInState {
  const SignInBusy();
}

class SignInSuccesful extends SignInState {
  final ApiUserModel user;

  const SignInSuccesful(this.user);
}