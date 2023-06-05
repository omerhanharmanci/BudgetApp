import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.errMessage, this.goBack});
  final String errMessage;
  final VoidCallback? goBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(errMessage),
        goBack != null
            ? IconButton(
                onPressed: () => goBack!(),
                icon: const Icon(Icons.arrow_back_ios),
              )
            : Container(),
      ],
    );
  }
}
