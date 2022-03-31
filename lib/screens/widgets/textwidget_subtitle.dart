import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';

class TextWidgetSubtitle extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  TextWidgetSubtitle({
    Key? key,
    required this.text,
    this.size = 14,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: getHeight(size),
      ),
    );
  }
}
