import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class LogInElevated extends StatelessWidget {
  final String? text;
  const LogInElevated({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonColor,
        minimumSize: const Size(double.infinity, 49),
      ),
      onPressed: () {
        Navigator.pushNamed(context, text!);
      },
      child: const Center(
        child: Text(
          "Continue",
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
