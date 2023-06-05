import 'package:budgetappproject/Model/api_user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthInitial()) {
    _authInit();
  }

  void onLogin(ApiUserModel user) => emit(AuthSuccesful(user));

  void _authInit() async {
    emit(const AuthSignIn());
  }

  void goSignUpScreen() => emit(const AuthSignUp());

  void goSignInScreen() => emit(const AuthSignIn());
}
