part of 'auth_cubit.dart';

abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthSignUp extends AuthState {
  const AuthSignUp();
}

class AuthSignIn extends AuthState{
  const AuthSignIn();
}

class AuthError extends AuthState {
  final String message;

  AuthError(this.message);
}

class AuthSuccesful extends AuthState {
  final ApiUserModel userModel;
  const AuthSuccesful(this.userModel);
}

class AuthBusy extends AuthState {
  const AuthBusy();
}
