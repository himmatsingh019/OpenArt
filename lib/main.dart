import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nft_ui/core/routes/routes.dart';
import 'package:nft_ui/ui/home/home.dart';

final navigationKey = GlobalKey<NavigatorState>();

void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigationKey,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: HomeScreen.route,
    );
  }
}
