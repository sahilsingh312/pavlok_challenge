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
          subtitle1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: CustomColors.textSecondary),
          subtitle2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: CustomColors.textPrimary),
          bodyText1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: CustomColors.textPrimary),
        ));
        // buttonTheme: ButtonThemeData(
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        //   buttonColor: CustomColors.secondaryLight,
        // )

  }
}