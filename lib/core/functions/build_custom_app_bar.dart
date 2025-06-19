import 'package:flutter/material.dart';

import '../app_colors.dart';

AppBar buildCustomAppBar(BuildContext context, String text,
    {bool isBackButton = true}) {
  return AppBar(
      backgroundColor: AppColors.kPrimaryColor,
      centerTitle: true,
      title: Text(
        text,
        style: const TextStyle(color: AppColors.kWhiteColor),
      ),
      leading: isBackButton
          ? IconButton(
              color: AppColors.kWhiteColor,
              onPressed: Navigator.of(context).pop,
              icon: const Icon(Icons.arrow_back_ios))
          : Container());
}
