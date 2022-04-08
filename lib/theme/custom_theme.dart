import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: CustomColors.primary,
        scaffoldBackgroundColor: CustomColors.scaffoldBackgroundColor,
        fontFamily: 'Manrope',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ));
        // buttonTheme: ButtonThemeData(
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        //   buttonColor: CustomColors.secondaryLight,
        // )

  }
}