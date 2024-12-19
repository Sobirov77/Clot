import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class LogInForms extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String? text;

  LogInForms({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        style: const TextStyle(color: AppColors.whiteColor),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.greyColor,
          labelText: text,
          border: InputBorder.none,
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Cannot be empty.';
          }
          // else if (!value.contains('@gmail.com')) {
          //   return 'Use the @gmail.com domain.';
          // }
          return null;
        },
      ),
    );
  }
}
