import 'package:flutter/material.dart';
import 'package:mycareer/core/theme/app_colors.dart';

class AppTextStyle {
  const AppTextStyle._();

  static const appBarTitle = TextStyle(
    color: AppColors.blue,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  static const appBarSubtitle = TextStyle(
    color: AppColors.blue,
    fontSize: 17.0,
    fontWeight: FontWeight.w300,
  );

  static const title = TextStyle(
    color: AppColors.blue,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  );

  static const subtitle = TextStyle(
    color: AppColors.grey,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  );

  static const resumeTitle = TextStyle(
    color: AppColors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  );

  static const resumeSubtitle = TextStyle(
    color: AppColors.black,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static const settingTitle = TextStyle(
    color: AppColors.black,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
  );
}
