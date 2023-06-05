import 'package:budgetappproject/Model/api_user_model.dart';
import 'package:budgetappproject/Model/user_model.dart';
import 'package:budgetappproject/Services/auth_base_service.dart';
import 'package:budgetappproject/Services/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.formKey, this.userNameController, this.passwordController)
      : super(const SignUpInitial()) {
    _signUpInit();
  }

  final GlobalKey<FormState> formKey;
  final TextEditingController userNameController;
  final TextEditingController passwordController;
  final AuthBaseService _auth = FirebaseAuthService();
  UserModel? _user;

  void _signUpInit() async{
    emit(const SignUpForm());
  }

  void _createPostUser() {
    final email = userNameController.text;
    final password = passwordController.text;
    debugPrint("email: $email Şifre: $password");
    _user = UserModel(email, password);
  }

  void _singUpPostUser() async {
    try {
      _createPostUser();
      if (_user != null) {
        final user = await _auth.signUp(_user!);
        emit(SignUpSuccesful(user!));
      } else {
        throw Exception("KULLANICI BOŞŞ");
      }
    } catch (err) {
      emit(SignUpError(err.toString()));
    }
  }

  void signUpOnPressed() {
    if (formKey.currentState!.validate()) {
      emit(const SignUpBusy());
      _singUpPostUser();
    }
  }

  goForm() => emit(const SignUpForm());
}
