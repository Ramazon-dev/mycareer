import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';

class TextWidgetTitle extends StatelessWidget {
  final String text;
  double size;
  Color color;

  TextWidgetTitle({
    Key? key,
    required this.text,
    this.size = 16,
    this.color = AppColors.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        fontSize: getHeight(size),
      ),
    );
  }
}
