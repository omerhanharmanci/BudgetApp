import 'package:budgetappproject/Screens/Auth/SignUp/sign_up_view.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/SignUpCubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _userMailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUpCubit>(
      create: (context) =>
          SignUpCubit(_formKey, _userMailController, _passwordController),
      child: const SignUpView(),
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
