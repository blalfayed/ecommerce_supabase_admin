import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    this.controller,
    required this.labelText,
  });
  final String labelText;

  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: AppColors.kBlackColor,
        controller: controller,
        decoration: InputDecoration(
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
