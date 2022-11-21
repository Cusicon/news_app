import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        height: 1.5,
      ),
    ),
  );
}

ThemeData appDarkTheme() {
  return ThemeData(
    primarySwatch: Colors.blue,
  );
}
