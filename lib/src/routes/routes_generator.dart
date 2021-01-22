import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entities/hotel.dart';
import '../ui/pages/edit_profile/edit_profile.dart';
import '../ui/pages/get_started/get_started.dart';
import '../ui/pages/home/home.dart';
import '../ui/pages/hotel/hotel.dart';
import '../ui/pages/login/login.dart';
import '../ui/pages/search/search.dart';
import '../ui/pages/sign_up/sign_up.dart';
import '../ui/pages/welcome/welcome.dart';
import 'routes.dart';

abstract class AppRoutesGenerator {
  static Route<dynamic> generateRoute(RouteSettings params) {
    var screen;
    var args = params.arguments;

    switch (params.name) {
      case AppRoutes.welcome:
        screen = WelcomePage();
        break;

      case AppRoutes.getStarted:
        screen = GetStartedPage();
        break;

      case AppRoutes.login:
        screen = LoginPage();
        break;

      case AppRoutes.signUp:
        screen = SignUpPage();
        break;

      case AppRoutes.home:
        screen = HomePage();
        break;

      case AppRoutes.editProfile:
        screen = EditProfilePage();
        break;

      case AppRoutes.search:
        screen = SearchPage();
        break;

      case AppRoutes.hotel:
        screen = args is Hotel
            ? HotelPage(hotel: args)
            : _errorScreen(AppRoutes.hotel);
        break;

      default:
        screen = _errorScreen(params.name);
    }

    return CupertinoPageRoute(
      builder: (_) => screen,
    );
  }

  static Widget _errorScreen(String route) => Scaffold(
        body: Text('$route : Screen Not Found'),
      );
}
