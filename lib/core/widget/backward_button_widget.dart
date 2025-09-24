import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/core/styling/app_colors.dart';

class BackwardButtonWidget extends StatelessWidget {
  final void Function() onTap;
  const BackwardButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 41.h,
        width: 41.w,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: const Color(0xffE8ECF4), width: 1),
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              onTap();
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
