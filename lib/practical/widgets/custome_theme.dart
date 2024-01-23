import 'package:flutter/material.dart';

bool isLight = true;


class CustomThemeData {
  CustomThemeData._();
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(centerTitle: true),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(centerTitle: true),
  );
}