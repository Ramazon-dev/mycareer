import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';

class TextWidgetSubtitle extends StatelessWidget {
  final String text;
  double size;
  TextWidgetSubtitle({
    Key? key,
    required this.text,
    this.size = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xff0C2C52),
        fontWeight: FontWeight.w400,
        fontSize: getHeight(size),
      ),
    );
  }
}
