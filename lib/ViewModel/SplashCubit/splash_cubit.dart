import 'package:budgetappproject/Model/api_user_model.dart';
import 'package:budgetappproject/Services/auth_base_service.dart';
import 'package:budgetappproject/Services/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashInitial()) {
    _appInit();
  }

  final AuthBaseService _auth = FirebaseAuthService();

  Future<void> _getCurrentUser() async {
    try {
      final user = await _auth.getCurrentUser();
      if (user != null) {
        emit(SplashHome(user));
      } else {
        emit(const SplashAuth());
      }
    } catch (err) {
      debugPrint("getCurrentUser hata:");
      emit(SplashError(err.toString()));
    }
  }

  void _appInit() async {
    emit(const SplashBusy());
    await Future.delayed(const Duration(seconds: 10));
    await _getCurrentUser();
  }

  void signOut() async {
    emit(const SplashBusy());
    try {
      await _auth.signOut();
      emit(const SplashAuth());
    } catch (err) {
      emit(SplashError(err.toString()));
    }
  }

  void succesfulLogin(ApiUserModel user) => emit(SplashHome(user));
}
