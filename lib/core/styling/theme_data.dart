import 'package:shopping_app/core/styling/app_colors.dart';
import 'package:shopping_app/core/styling/app_fonts.dart';
// import 'package:shopping_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: AppFonts.mainFontName,

    // textTheme: TextTheme(
    //   titleLarge: AppStyles.primaryHeadlineStyle,
    //   titleMedium: AppStyles.subtitlesStyle,
    // ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.whiteColor,
    ),
  );
}
