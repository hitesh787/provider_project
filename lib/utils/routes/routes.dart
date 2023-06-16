import 'package:flutter/material.dart';
import 'package:provider_project/screen/bottom_navigator.dart';
import 'package:provider_project/utils/routes/routes_name.dart';
import 'package:provider_project/view/home_screen.dart';
import 'package:provider_project/view/login_view.dart';
import 'package:provider_project/view/signp_view.dart';
import 'package:provider_project/view/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());

      case RoutesName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpView());

      case RoutesName.bottom:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BottomNavigatorBar());

      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No route defined'),
              ),
            );
          },
        );
    }
  }
}
