import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField(
      {super.key,
      required this.controller,
      this.errMessage,
      this.labelText,
      this.hintText,
      this.obscureText});

  final TextEditingController controller;
  final String? errMessage;
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: _decoration(),
        obscureText: obscureText ?? false,
        validator: (value) => _isValidate(value),
      ),
    );
  }

  InputDecoration _decoration() {
    return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  String? _isValidate(String? value) {
    if (value!.isEmpty) {
      return "Lütfen $labelText giriniz";
    }
    if (value.length < 10) {
      return "$labelText çok kısa";
    }
    return null;
  }
}
