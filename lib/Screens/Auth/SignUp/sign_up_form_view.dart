import 'package:budgetappproject/Screens/Auth/auth_text_form_field.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/SignUpCubit/sign_up_cubit.dart';
import 'package:budgetappproject/ViewModel/AuthCubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpFormView extends StatelessWidget {
  const SignUpFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: _column(context),
    );
  }

  Column _column(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 200),
        AuthTextFormField(
          controller: context.read<SignUpCubit>().userNameController,
          labelText: "MAİL",
        ),
        AuthTextFormField(
          controller: context.read<SignUpCubit>().passwordController,
          labelText: "ŞİFRE",
          obscureText: true,
        ),
        ElevatedButton(
          onPressed: () => context.read<SignUpCubit>().signUpOnPressed(),
          child: const Text("KAYIT OL"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () => context.read<AuthCubit>().goSignInScreen(),
            child: const Text("Bir hesaba sahip misin? Giriş yap"),
          ),
        ),
      ],
    );
  }
}
