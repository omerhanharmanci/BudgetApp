part of 'sign_up_cubit.dart';

abstract class SignUpState {
  const SignUpState();
}

class SignUpInitial extends SignUpState {
  const SignUpInitial();
}

class SignUpForm extends SignUpState {
  const SignUpForm();
}

class SignUpError extends SignUpState {
  final String? message;
  const SignUpError(this.message);
}

class SignUpBusy extends SignUpState {
  const SignUpBusy();
}

class SignUpSuccesful extends SignUpState {
  final ApiUserModel user;

  const SignUpSuccesful(this.user);
}
