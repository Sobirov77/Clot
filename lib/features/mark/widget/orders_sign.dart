import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

Widget OrderWidget() {
  return Padding(
    padding: const EdgeInsets.only(
      bottom: 15,
    ),
    child: Container(
      height: 72,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.greyColor,
      ),
      child: Padding(padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(Icons.account_circle),
            const SizedBox(
              width: 10,
            ),
            const Expanded(child:  Text("Hello World",
              style: TextStyle(
                color: AppColors.whiteColor,

              ),
            ),),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward, color: AppColors.whiteColor,)),
          ],
        ),
      ),
    ),
  );
}