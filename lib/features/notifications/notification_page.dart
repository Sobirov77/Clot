// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../../core/route/rout_names.dart';
//
// class Notification_Page extends StatelessWidget {
//   Notification_Page({super.key});
//
//   bool hasNotification = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xff1D182A),
//         appBar: AppBar(
//           backgroundColor: Color(0xff1D182A),
//           title: const Text(
//             "Notifications",
//             style: TextStyle(
//                 color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//         ),
//         body: hasNotification
//             ? Padding(
//           padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
//           child: Column(
//             children: [],
//           ),
//         )
//             : SizedBox(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset(
//                 "assets/images/bell.png",
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               const Text(
//                 "No Notification yet",
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.buttonColor,
//                   minimumSize: const Size(185, 52),
//                 ),
//                 onPressed: () {
//                   Navigator.pushNamed(
//                     context,
//                     RouteNames.,
//                   );
//                 },
//                 child: const Text(
//                   "Explore Categories",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }