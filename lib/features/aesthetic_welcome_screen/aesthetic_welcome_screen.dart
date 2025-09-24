import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/routing/app_routes.dart';
import 'package:shopping_app/core/styling/app_assets.dart';
import 'package:shopping_app/core/styling/app_colors.dart';
import 'package:shopping_app/core/styling/app_styles.dart';
import 'package:shopping_app/core/widget/custom_app_bar.dart';
import 'package:shopping_app/core/widget/primary_button_widget.dart';
import 'package:shopping_app/core/widget/spacing_widgets.dart';

class AestheticWelcomeScreen extends StatelessWidget {
  const AestheticWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          children: [
            CustomAppBar(title: "Shopping App", centerTitle: true),
            HeightSpace(50.h),
            Text(
              "ShopCraft",
              style: AppStyles.primaryHeadlineStyle.copyWith(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            HeightSpace(50.h),
            Text(
              "Your Premium Shopping Experience",
              style: AppStyles.white24w500Style,
              textAlign: TextAlign.center,
            ),
            HeightSpace(50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.picWelcome,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
                Image.network(
                  "https://picsum.photos/200",
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            HeightSpace(50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButtonWidget(
                  buttonText: "Sign Up",
                  buttonColor: AppColors.whiteColor,
                  textColor: AppColors.primaryColor,
                  onpress: () {
                    GoRouter.of(context).pushNamed(AppRoutes.signUpScreen);
                  },
                  borderRadius: 20.r,
                  width: 150.w,
                  height: 30.h,
                ),
                WidthSpace(20.w),
                PrimaryButtonWidget(
                  buttonText: "Sign In",
                  buttonColor: AppColors.whiteColor,
                  textColor: AppColors.primaryColor,
                  onpress: () {
                    GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                  },
                  borderRadius: 20.r,
                  width: 150.w,
                  height: 30.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
