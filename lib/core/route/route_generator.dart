import 'package:flutter/material.dart';
import 'package:untitled/core/route/rout_names.dart';
import 'package:untitled/features/auth/sign_in/reset_page.dart';
import 'package:untitled/features/auth/sign_in/send_email.dart';
import 'package:untitled/features/auth/sign_in/sign_in_email.dart';
import 'package:untitled/features/auth/sign_in/sing_in_password.dart';
import 'package:untitled/features/auth/sign_up/about.dart';
import 'package:untitled/features/auth/sign_up/sign_up.dart';
import 'package:untitled/features/home/bottom_nav_bar.dart';
import 'package:untitled/features/home/home_page.dart';
import 'package:untitled/features/home/profile.dart';
import 'package:untitled/features/into/splash_page.dart';
import 'package:untitled/features/mark/orders.dart';
import 'package:untitled/features/search/search.dart';


class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.signInEmail:
        return MaterialPageRoute(builder: (_) => const SignInEmail());
      case RouteNames.infoPage:
        return MaterialPageRoute(builder: (_) => const InfoPage());
      case RouteNames.signInPassword:
        return MaterialPageRoute(builder: (_) => const SignInPassword());
      case RouteNames.createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAccount());
      case RouteNames.resetPage:
        return MaterialPageRoute(builder: (_) => const ResetPage());
      case RouteNames.sendEmailPage:
        return MaterialPageRoute(builder: (_) => const SendEmail());
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteNames.logInAbout:
        return MaterialPageRoute(builder: (_) => const LogInAbout());
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case RouteNames.myProfile:
        return MaterialPageRoute(builder: (_) => const MyProfile());
      case RouteNames.orders:
        return MaterialPageRoute(builder: (_) => const Orders());
      case RouteNames.search:
        return MaterialPageRoute(builder: (_) => const Search());
      // case RouteNames.shopCategories:
      //   return MaterialPageRoute(builder: (_) => const ShopCategories());
        default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
