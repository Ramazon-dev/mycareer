import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';

ThemeData darkThemeData() {
  return ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      unselectedItemColor: Colors.white,
      elevation: 1,
    ),
    scaffoldBackgroundColor: AppColors.darkColor,
  );
}
