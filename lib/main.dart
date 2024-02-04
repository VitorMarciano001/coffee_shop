import 'package:coffee_shop/screens/login_screen.dart';
import 'package:flutter/material.dart';
import './theme/theme_config.dart';

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
      home: const LogInPage(),
    );
  }
}
