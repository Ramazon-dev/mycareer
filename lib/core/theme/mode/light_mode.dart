import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';

ThemeData lightThemeData() {
  return ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.white,
      filled: true,
      iconColor: AppColors.grey,
    ),
    cardColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    drawerTheme: const DrawerThemeData(
        // backgroundColor: AppColors.textColor,
        // scrimColor: AppColors.textColor,
        ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        // size: getHeight(25),
        color: AppColors.textColor,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.textColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.textColor,
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: AppColors.white,
      ),
      headline2: TextStyle(
        color: AppColors.white,
      ),
      bodyText1: TextStyle(
        color: AppColors.white,
      ),
      overline: TextStyle(
        color: AppColors.white,
      ),
    ),
  );
}
