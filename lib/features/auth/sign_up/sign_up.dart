import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';
import '../widgets/log_in_elevated.dart';
import '../widgets/log_in_forms.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

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
              child: const Icon(Icons.arrow_back,color: AppColors.whiteColor,),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Create Account",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LogInForms(text: "First Name"),
                  LogInForms(text: "Last Name"),
                  LogInForms(text: "Email Address"),
                  LogInForms(text: "Password"),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const LogInElevated(
              text: '/logInAbout',
            ),
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
          ],
        ),
      ),
    );
  }
}
