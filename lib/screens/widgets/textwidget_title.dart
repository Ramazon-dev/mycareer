import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';

class TextWidgetTitle extends StatelessWidget {
  final String text;
  double size;

  TextWidgetTitle({
    Key? key,
    required this.text,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xff2261B1),
        fontWeight: FontWeight.w700,
        fontSize: getHeight(size),
      ),
    );
  }
}
