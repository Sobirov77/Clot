import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        leading: CircleAvatar(
          child: Icon(Icons.arrow_back),
        ),
        title: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                ),
              ),
              Expanded(child: Container()),
              IconButton(onPressed: (){}, icon: Icon(Icons.close)),
            ],
          ),
        ),
      ),
    );
  }
}
