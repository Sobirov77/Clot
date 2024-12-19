import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/core/route/rout_names.dart';
import 'package:untitled/features/auth/widgets/log_in_elevated.dart';
import 'package:untitled/features/auth/widgets/log_in_forms.dart';


class SignInEmail extends StatelessWidget {
  const SignInEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D182A),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign in",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //! Forms
            LogInForms(text: "Email Address"),
            const SizedBox(
              height: 20,
            ),
            //! Elevated button
            const LogInElevated(
              text: '/sign_in_password',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Don't have an Account ?",
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.createAccount);
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
                    "Create One",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            elevatedButton(Icons.apple, "Continue With Apple"),
            const SizedBox(
              height: 20,
            ),
            elevatedButton(Icons.g_mobiledata, "Continue With Google"),
            const SizedBox(
              height: 20,
            ),
            elevatedButton(Icons.facebook, "Continue With Facebook")
          ],
        ),
      ),
    );
  }
}

Widget elevatedButton(IconData icon, String text) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.buttonColor,
      minimumSize: const Size(
        double.infinity,
        60,
      ),
    ),
    onPressed: () {},
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: AppColors.whiteColor,
            size: 25,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
    ),
  );
}
