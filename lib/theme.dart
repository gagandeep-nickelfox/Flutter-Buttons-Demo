import 'package:flutter/material.dart';

const darkBlue = Color.fromARGB(255, 30, 19, 97);
const lightPink = Color.fromARGB(255, 197, 111, 197);
const white = Colors.white;

final buttonsDemoTheme = ThemeData(
  disabledColor: Colors.red,
  colorScheme: const ColorScheme.light().copyWith(
    primary: darkBlue,
    onPrimary: white,
    secondary: lightPink,
    onSecondary: white,
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          backgroundColor: darkBlue,
          primary: white,
          shape: RoundedRectangleBorder(
            //Default Border radius to all buttons
              borderRadius: BorderRadius.circular(8.0)))),
);
