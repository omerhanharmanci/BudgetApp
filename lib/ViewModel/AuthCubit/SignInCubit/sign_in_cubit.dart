import 'package:budgetappproject/Model/api_user_model.dart';
import 'package:budgetappproject/Model/user_model.dart';
import 'package:budgetappproject/Services/auth_base_service.dart';
import 'package:budgetappproject/Services/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.formKey, this.userNameController, this.passwordController)
      : super(const SignInInitial()) {
    _signInInit();
  }

  final GlobalKey<FormState> formKey;
  final TextEditingController userNameController;
  final TextEditingController passwordController;
  final AuthBaseService _auth = FirebaseAuthService();
  UserModel? _user;

  void _signInInit() async {
    emit(const SignInForm());
  }

  void _createPostUser() {
    final email = userNameController.text;
    final password = passwordController.text;
    debugPrint("email: $email Şifre: $password");
    _user = UserModel(email, password);
  }

  void _singInPostUser() async {
    try {
      _createPostUser();
      if (_user != null) {
        final user = await _auth.signIn(_user!);
        emit(SignInSuccesful(user!));
      } else {
        throw Exception("KULLANICI BOŞŞ");
      }
    } catch (err) {
      emit(SignInError(err.toString()));
    }
  }

  void signInOnPressed() {
    if (formKey.currentState!.validate()) {
      emit(const SignInBusy());
      _singInPostUser();
    }
  }

  goForm() => emit(const SignInForm());
}
