import 'package:flutter/material.dart';
import 'package:mycareer/core/theme/app_colors.dart';

ThemeData darkThemeData() {
  return ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColors.textformfielddark,
      filled: true,
      iconColor: AppColors.white,
      // borderSide: const BorderSide(color: Colors.blue),
      border: OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.black),
          ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white.withOpacity(0.3),
      elevation: 1,
    ),
    scaffoldBackgroundColor: AppColors.darkColor,
  );
}
