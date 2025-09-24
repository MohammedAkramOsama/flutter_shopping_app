import 'package:shopping_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? textColor;
  final double? fontSize;
  final VoidCallback? onpress;

  const PrimaryButtonWidget({
    super.key,
    this.buttonText,
    this.buttonColor,
    this.width,
    this.height,
    this.borderRadius,
    this.textColor,
    this.fontSize,
    this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onpress!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        buttonText ?? "Button",
        style: TextStyle(
          color: textColor ?? AppColors.whiteColor,
          fontSize: fontSize ?? 16.sp,
        ),
      ),
    );
  }
}
