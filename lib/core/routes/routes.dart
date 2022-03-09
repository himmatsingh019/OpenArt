import 'package:flutter/material.dart';
import 'package:nft_ui/ui/about/about.dart';
import 'package:nft_ui/ui/auth/register.dart';
import 'package:nft_ui/ui/home/home.dart';
import 'package:nft_ui/ui/menu/menu.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget widget = Container();

    switch (settings.name) {
      case MenuScreen.route:
        widget = MenuScreen();
        break;

      case RegisterScreen.route:
        widget = RegisterScreen();
        break;

      case AboutScreen.route:
        widget = AboutScreen();
        break;

      case HomeScreen.route:
        widget = HomeScreen();
        break;
    }
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
