import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class PrimaryTextFieldWidget extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? preffixIcon;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const PrimaryTextFieldWidget({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.preffixIcon,
    this.isPassword,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        validator: validator,
        autofocus: false,
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.background, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.background, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          filled: true,
          suffixIcon: suffixIcon,
          prefixIcon: preffixIcon,
        ),
      ),
    );
  }
}
