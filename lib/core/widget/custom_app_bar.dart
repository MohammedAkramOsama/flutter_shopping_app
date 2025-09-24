import 'package:flutter/material.dart';
import 'package:shopping_app/core/styling/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      foregroundColor: AppColors.primaryColor,
    );
  }

  // this is required when you implement PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
