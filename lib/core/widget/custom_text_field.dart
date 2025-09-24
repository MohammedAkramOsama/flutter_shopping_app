import 'package:shopping_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final double? fontSize;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? textColor;
  final bool isPassword;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.fontSize,
    this.height,
    this.width,
    this.borderRadius,
    this.textColor,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56.h,
      width: width ?? 331.w,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: isPassword ? obscureText : false,
        cursorColor: AppColors.primaryColor,
        autofocus: false,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: TextStyle(
            fontSize: fontSize ?? 15.sp,
            color: Color(0xff8391A1),
            fontWeight: FontWeight.w500,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          suffixIcon: suffixIcon,
          fillColor: const Color(0xffF7F8F9),
          filled: true,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            borderSide: BorderSide(color: Color(0xffE8ECF4), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
        ),
      ),
    );
  }
}
