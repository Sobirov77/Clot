import 'package:flutter/material.dart';
import 'package:untitled/features/home/profile.dart';
import 'package:untitled/features/mark/orders.dart';
import 'package:untitled/features/mark/orders_page.dart';
import 'package:untitled/features/mark/widget/orders_sign.dart';
import 'package:untitled/features/notifications/notifications.dart';

import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  List<Widget> body =  [
    const HomePage(),
    const NotificationPage(),
    OrderPage(),
    const MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurpleAccent,
        currentIndex: _currentIndex,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItemWidget(
            "Home",
            "assets/images/home.png",
          ),
          BottomNavigationBarItemWidget(
            " Notification",
            "assets/images/notification.png",
          ),
          BottomNavigationBarItemWidget(
            " Mark",
            "assets/images/mark.png",
          ),
          BottomNavigationBarItemWidget(
            " Profile",
            "assets/images/person.png",
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItemWidget(String label, String text) {
  return BottomNavigationBarItem(
    backgroundColor: Colors.black45,
    label: label,
    icon: ImageIcon(
      AssetImage(text),
      size: 25,
    ),
  );
}
