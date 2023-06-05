


import 'package:budgetappproject/Model/api_user_model.dart';
import 'package:budgetappproject/Model/user_model.dart';

abstract class AuthBaseService {

  Future<ApiUserModel?> signUp(UserModel user);
  Future<ApiUserModel?> signIn(UserModel user);
  Future<void> signOut();
  Future<ApiUserModel?> getCurrentUser();
}