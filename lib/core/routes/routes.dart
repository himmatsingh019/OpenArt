import 'package:flutter/material.dart';
import 'package:nft_ui/ui/about/about.dart';
import 'package:nft_ui/ui/auth/register.dart';
import 'package:nft_ui/ui/home/home.dart';
import 'package:nft_ui/ui/menu/menu.dart';
import 'package:nft_ui/ui/place_bid/place_bid.dart';
import 'package:nft_ui/ui/sold_page/sold_page.dart';

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

      case SoldPage.route:
        widget = SoldPage();
        break;

      case PlaceBid.route:
        widget = PlaceBid();
        break;
    }
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
