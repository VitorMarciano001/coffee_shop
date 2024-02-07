import 'package:coffee_shop/theme/colors.dart';
import 'package:coffee_shop/theme/texttheme.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  useMaterial3: false,
  scaffoldBackgroundColor: background.shade800,
  fontFamily: 'Alegreya',
  textTheme: textTheme,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primary.shade500,
    secondary: secondary.shade500,
    tertiary: neutral.shade500,
    error: error.shade500,
  ),
);
