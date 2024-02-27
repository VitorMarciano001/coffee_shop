import 'package:coffee_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../screens/login_screen.dart';
import '../screens/verify_page.dart';
import './theme/theme_config.dart';
import 'utils/app_route.dart';
import 'screens/sigup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      routes: {
        AppRoute.login: (ctx) => const LogInPage(),
        AppRoute.signin: (ctx) => const SignUpPage(),
        AppRoute.verify: (ctx) => const VerifyPage(),
        AppRoute.home: (ctx) => const HomePage(),
      },
    );
  }
}
