


import 'package:budgetappproject/Screens/Auth/auth_text_form_field.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/SignInCubit/sign_in_cubit.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInFormView extends StatelessWidget {
  const SignInFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignInCubit>().formKey,
      child: _column(context),
    );
  }

   Column _column(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 200),
        AuthTextFormField(
          controller: context.read<SignInCubit>().userNameController,
          labelText: "MAİL",
        ),
        AuthTextFormField(
          controller: context.read<SignInCubit>().passwordController,
          labelText: "ŞİFRE",
          obscureText: true,
        ),
        ElevatedButton(
          onPressed: () => context.read<SignInCubit>().signInOnPressed(),
          child: const Text("GİRİŞ YAP"),
        ),
        TextButton(
          onPressed: () => context.read<AuthCubit>().goSignUpScreen(),
          child: const Text("hesabın yok mu? Kayıt ol"),
        ),
      ],
    );
  }
}