import 'package:flutter/material.dart';
import 'package:untitled/core/route/rout_names.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff1D182A),
          appBar: AppBar(
            backgroundColor: Color(0xff1D182A),
            leading: IconButton(onPressed: (){
              Navigator.pushReplacementNamed(context, RouteNames.bottomNavBar);
            }, icon: const Icon(Icons.arrow_back, color: Colors.white,)),
          ),
          body: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle_rounded, size: 100,),
                  SizedBox(height: 20,),
                  Text(
                    "This is Your Account Page",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
