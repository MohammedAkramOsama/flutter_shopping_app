import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_app/core/routing/app_routes.dart';
import 'package:shopping_app/features/aesthetic_welcome_screen/aesthetic_welcome_screen.dart';
import 'package:shopping_app/features/auth/login_screen.dart';
import 'package:shopping_app/features/auth/sign_up_screen.dart';
import 'package:shopping_app/features/shopping_home_screen/shopping_home_screen.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.aestheticWelcomeScreen,
    routes: [
      GoRoute(
        path: AppRoutes.aestheticWelcomeScreen,
        name: AppRoutes.aestheticWelcomeScreen,
        builder: (context, state) => const AestheticWelcomeScreen(),
      ),

      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        pageBuilder: (context, state) =>
            _buildFadeTransition(state, const LoginScreen()),
      ),
      GoRoute(
        path: AppRoutes.signUpScreen,
        name: AppRoutes.signUpScreen,
        pageBuilder: (context, state) =>
            _buildFadeTransition(state, const SignUpScreen()),
      ),
      GoRoute(
        path: AppRoutes.shoppingHomeScreen,
        name: AppRoutes.shoppingHomeScreen,
        pageBuilder: (context, state) =>
            _buildFadeTransition(state, const ShoppingHomeScreen()),
      ),
    ],
  );

  static CustomTransitionPage _buildFadeTransition(
    GoRouterState state,
    Widget child,
  ) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
