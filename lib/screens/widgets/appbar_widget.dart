import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  String text;
  VoidCallback? func;
  Widget? widget;
  AppBarWidget({
    Key? key,
    this.text = '',
    this.func,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: func,
          icon: widget!,
        ),
      ],
      title: Text(
        text,
        style: TextStyle(
          color: AppColors.textColor,
          fontSize: getHeight(18),
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, getHeight(56));
}
