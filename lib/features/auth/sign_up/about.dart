import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class LogInAbout extends StatefulWidget {
  const LogInAbout({super.key});

  @override
  State<LogInAbout> createState() => _LogInAboutState();
}

class _LogInAboutState extends State<LogInAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Tell us About yourself",
                    style: TextStyle(color: AppColors.whiteColor, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Who do you shop for ?",
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SizedBox(
                        width: 200,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurpleAccent,
                          ),
                          child: const Text(
                            "Men",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),),
                      Expanded(child: SizedBox(
                        width: 200,
                        height: 70,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white10,
                          ),
                          child: const Text(
                            "Women",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "How Old are you ?",
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    onPressed: () {},
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Finish",
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: 40,
                          ),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 120,
              width: double.infinity,
              color: AppColors.buttonColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 30, left: 10, right: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    minimumSize: const Size(double.infinity, 49),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context,"/bottomNavBar");
                  },
                  child: const Center(
                    child: Text(
                      "Finish",
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
