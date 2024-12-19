import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

Widget Item(){

  return Padding(padding: EdgeInsets.all(8.0),
  child: Container(
    child: Column(
      children: [
        Image(image: AssetImage("assets/images/boy.png")),
        Text("Club Fleece Means Jacket", style: TextStyle(color: AppColors.whiteColor, fontSize: 15),),
        Text("Dollar belgisi😂 => 56.97")
      ],
    ),
  ),
  );
}