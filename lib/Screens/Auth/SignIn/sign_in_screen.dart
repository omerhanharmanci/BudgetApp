import 'package:budgetappproject/Screens/Auth/SignIn/sign_in_view.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/SignInCubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _userMailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInCubit>(
      create: (context) =>
          SignInCubit(_formKey, _userMailController, _passwordController),
      child: const SignInView(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _formKey.currentState?.dispose();
    _userMailController.dispose();
    _passwordController.dispose();
  }
}
