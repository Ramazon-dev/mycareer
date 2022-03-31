import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback ontap;
  final String text;

  const ElevatedButtonWidget({
    Key? key,
    required this.ontap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // primary: AppColors.textColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHeight(20)),
        ),
        fixedSize: Size(getWidth(250), getHeight(40)),
      ),
      onPressed: ontap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: getHeight(12),
          color: Colors.white,
        ),
      ),
    );
  }
}
