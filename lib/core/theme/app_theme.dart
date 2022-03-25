import 'package:flutter/material.dart';
import 'package:mycareer/core/theme/app_colors.dart';

final ThemeData appThemeData = ThemeData(
  fontFamily: 'Century Gothic',
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: AppColors.blue),
    backgroundColor: AppColors.white,
    elevation: 0.0,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: AppColors.blue),
    bodyText2: TextStyle(color: AppColors.blue),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(primary: AppColors.blue),
  ),
  primaryColor: AppColors.white,
  scaffoldBackgroundColor: AppColors.white,
  iconTheme: const IconThemeData(color: AppColors.blue),
);
