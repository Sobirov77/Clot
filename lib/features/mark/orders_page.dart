import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/features/mark/orders.dart';
import '../../core/route/rout_names.dart';

class OrderPage extends StatelessWidget {
  bool hasOrders = true;

   OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Orders",style: TextStyle(color: AppColors.greyColor, fontSize: 20),),
            centerTitle: true,
            backgroundColor: Color(0xff1D182A), //Color(0xff1D182A)
          ),
          body: hasOrders? Orders(): Container(color:
          Color(0xff1D182A),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/basket.png",
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        "No Orders yet",
                        style: TextStyle(color: AppColors.whiteColor, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.buttonColor,
                          minimumSize: const Size(185, 52),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, RouteNames.shopCategories);
                        },
                        child: const Text(
                          "Explore Categories",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
