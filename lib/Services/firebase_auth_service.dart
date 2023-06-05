import 'package:budgetappproject/Model/api_user_model.dart';
import 'package:budgetappproject/Model/user_model.dart';
import 'package:budgetappproject/Services/auth_base_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//safearea
class FirebaseAuthService extends AuthBaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<ApiUserModel?> getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      return _convertApiUserModel(user);
    } catch (err) {
      debugPrint(err.toString());
      rethrow;
    }
  }

  @override
  Future<ApiUserModel?> signIn(UserModel user) async {
    try {
      var userCredential = await _auth.signInWithEmailAndPassword(
          email: user.username!, password: user.password!);
      return _convertApiUserModel(userCredential.user);
    } on FirebaseAuthException catch (err) {
      debugPrint(err.toString());
      rethrow;
    }
  }

  @override
  Future signOut() async {
    try {
      await _auth.signOut();
    } catch (err) {
      debugPrint(err.toString());
      return err;
    }
  }

  @override
  Future<ApiUserModel?> signUp(UserModel user) async {
    try {
      var userCredential = await _auth.createUserWithEmailAndPassword(
        email: user.username!,
        password: user.password!,
      );
      return _convertApiUserModel(userCredential.user);
    } on FirebaseAuthException catch (err) {
      debugPrint(err.toString());
      rethrow;
    }
  }

  ApiUserModel? _convertApiUserModel(User? user) {
    return user == null ? null : ApiUserModel(user.uid, user.email);
  }
}
