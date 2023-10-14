import 'package:flutter/material.dart';
import 'package:trivia_app/vars/colors.dart';

class MyTheme {
/*
********************************* LIGHT MODE *********************************** 
*/
  static ThemeData themeDataLight = ThemeData(
    brightness: Brightness.light,
    primarySwatch: PRIMARY_SWATCH_LIGHT,
    scaffoldBackgroundColor: Colors.transparent,
  );

  static BoxDecoration lightBackgroundBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: GRADIENT_COLORS_LIGHT,
    ),
  );

/*
********************************* DARK MODE *********************************** 
*/
  static ThemeData themeDataDark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: PRIMARY_SWATCH_DARK,
    scaffoldBackgroundColor: Colors.transparent,
  );

  static BoxDecoration darkBackgroundBoxDecoration = BoxDecoration(
    // Box decoration takes a gradient
    gradient: LinearGradient(
      // Where the linear gradient begins and ends
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: GRADIENT_COLORS_DARK,
    ),
  );
}
