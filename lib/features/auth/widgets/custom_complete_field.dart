import 'package:flutter/material.dart';
import 'package:shopping_app/core/styling/app_colors.dart';

class CustomCompleteField extends StatelessWidget {
  final String message;
  final VoidCallback? onpress;

  const CustomCompleteField({super.key, required this.message, this.onpress});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Welcome!",
            style: TextStyle(
              color: AppColors.greenColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            message,
            style: TextStyle(color: AppColors.grayColor, fontSize: 16),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.greenColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
                if (onpress != null) onpress!();
              },
              child: const Text(
                "Close",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
