import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final Color? buttonColor;
  final String? buttonText;
  final Color? textColor;
  final double? borderRadius;
  final void Function()? onPress;

  const PrimaryButtonWidget({
    super.key,
    this.buttonColor,
    this.buttonText,
    this.textColor,
    this.borderRadius,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(color: textColor ?? Colors.white),
      ),
    );
  }
}