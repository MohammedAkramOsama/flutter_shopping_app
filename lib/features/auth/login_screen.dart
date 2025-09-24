import 'package:shopping_app/core/routing/app_routes.dart';
import 'package:shopping_app/core/styling/app_colors.dart';
import 'package:shopping_app/core/styling/app_styles.dart';
import 'package:shopping_app/core/widget/backward_button_widget.dart';
import 'package:shopping_app/core/widget/custom_text_field.dart';
import 'package:shopping_app/core/widget/primary_button_widget.dart';
import 'package:shopping_app/core/widget/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/features/auth/widgets/custom_complete_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool _obscurePassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeightSpace(12.h),
                  BackwardButtonWidget(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                  ),
                  HeightSpace(28.h),
                  SizedBox(
                    width: 280.w,
                    child: Column(
                      children: [
                        Text(
                          "Welcome back!",
                          style: AppStyles.primaryHeadlineStyle,
                        ),
                        Text(
                          "Sign in to ShopCraft",
                          style: AppStyles.white16w600Style.copyWith(
                            color: Color(0xff4B5563),
                          ),
                        ),
                      ],
                    ),
                  ),
                  HeightSpace(32.h),
                  CustomTextField(
                    controller: emailController,
                    hintText: "Enter your email",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter your email";
                      }
                      if (!value.contains("@")) {
                        return "Email must contain @";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(24.h),
                  CustomTextField(
                    controller: passwordController,
                    hintText: "Enter your password",
                    isPassword: true,
                    obscureText: _obscurePassword,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.primaryColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),

                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  HeightSpace(30.h),
                  PrimaryButtonWidget(
                    onpress: () {
                      if (formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) => CustomCompleteField(
                            message: "Account sign-in successfully",
                            onpress: () {
                              Navigator.of(context).pop();
                              GoRouter.of(
                                context,
                              ).pushNamed(AppRoutes.shoppingHomeScreen);
                            },
                          ),
                        );
                      }
                    },
                    buttonText: "Login",
                    width: 331.w,
                    height: 56.h,
                  ),
                  HeightSpace(35.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
