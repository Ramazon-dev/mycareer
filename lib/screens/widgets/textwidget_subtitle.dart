import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';

class TextWidgetSubtitle extends StatelessWidget {
  final String text;
  double size;
  Color color;
  TextWidgetSubtitle({
    Key? key,
    required this.text,
    this.size = 14,
    this.color = const Color(0xff0C2C52),
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
