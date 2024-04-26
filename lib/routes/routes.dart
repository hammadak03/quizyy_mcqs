import 'package:flutter/material.dart';
import 'package:quizyy_mcqs/routes/route_names.dart';
import 'package:quizyy_mcqs/screens/home_screen.dart';
import 'package:quizyy_mcqs/screens/user_login.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.userLoginScreen:
        return MaterialPageRoute(builder: (context) => const UserLoginScreen());
      case RoutesNames.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}
