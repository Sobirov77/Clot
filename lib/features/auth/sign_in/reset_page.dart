import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/features/auth/widgets/log_in_elevated.dart';
import 'package:untitled/features/auth/widgets/log_in_forms.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/sign_in_email');
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.whiteColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Forgot Password",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LogInForms(
              text: "Enter Email address",
            ),
            const SizedBox(
              height: 30,
            ),
            const LogInElevated(text: "/sendEmail"),
            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
