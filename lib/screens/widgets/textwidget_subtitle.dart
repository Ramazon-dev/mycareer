import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/cubit/darkmode_cubit/darkmode_cubit.dart';

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
    return BlocBuilder<DarkmodeCubit, DarkmodeState>(
      builder: (context, state) {
        return Text(
          text,
          style: TextStyle(
            color:
                context.watch<DarkmodeCubit>().isDark ? color : AppColors.white,
            fontWeight: FontWeight.w400,
            fontSize: getHeight(size),
          ),
        );
      },
    );
  }
}
