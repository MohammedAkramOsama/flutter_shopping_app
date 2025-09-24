import 'package:shopping_app/core/styling/app_colors.dart';
import 'package:shopping_app/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadlineStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    color: AppColors.primaryColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle white16w600Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    color: AppColors.whiteColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle white24w500Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    color: AppColors.whiteColor,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );
}
