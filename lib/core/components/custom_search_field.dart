import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    this.controller,
    required this.labelText,
    this.isPassword = false,
    this.onPressed,
  });
  final String labelText;

  final TextEditingController? controller;
  final bool isPassword;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: isPassword,
        cursorColor: AppColors.kBlackColor,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: onPressed,
                  icon: const Icon(Icons.remove_red_eye_outlined))
              : null,
          labelText: labelText,
          labelStyle: const TextStyle(color: AppColors.kBlackColor),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kBordersideColor)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kBordersideColor)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kBordersideColor)),
        ));
  }
}
