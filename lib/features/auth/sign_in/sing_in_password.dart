import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/features/auth/widgets/log_in_forms.dart';
import '../widgets/log_in_elevated.dart';

class SignInPassword extends StatelessWidget {
  const SignInPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign in",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LogInForms(text: "Password"),
            const SizedBox(
              height: 20,
            ),
            const LogInElevated(text: '/bottomNavBar'),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Forgot Password ?",
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/resetPage");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.whiteColor, // Sets the text color
                    textStyle: const TextStyle(
                      fontSize: 16, // Example for font size (optional)
                      fontWeight:
                          FontWeight.bold, // Example for bold text (optional)
                    ),
                  ),
                  child: const Text(
                    "Reset",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 280,
            ),
          ],
        ),
      ),
    );
  }
}
