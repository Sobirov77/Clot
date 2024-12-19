import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class SendEmail extends StatelessWidget {
  const SendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/log_in/send_email.png",),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "We Sent you an Email to reset \n             your password.",
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 159,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "/sign_in_email",
                      );
                    },
                    child: const Center(
                      child: Text(
                        "Return to Login ",
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
