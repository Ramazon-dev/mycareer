import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';
import 'package:mycareer/screens/widgets/textwidget_subtitle.dart';

class LinksListWigdet extends StatelessWidget {
  LinksListWigdet({Key? key}) : super(key: key);

  List<String> listOfStrings = [
    "linkedin account link",
    "Instagram account link",
    "Git hub account link",
    "Behance account link",
  ];
  List<Widget> listOfWidgets = [
    AppIcons.linkedin(color: AppColors.white),
    AppIcons.instagram(color: AppColors.white),
    AppIcons.github(color: AppColors.white),
    AppIcons.be(color: AppColors.white),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(225),
      // color: Colors.yellow,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listOfStrings.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: getHeight(40),
            child: Row(
              children: [
                CircleAvatar(
                  radius: getHeight(15),
                  backgroundColor: const Color(0xff0077B5),
                  child: listOfWidgets[index],
                ).only(right: getHeight(20)),
                TextWidgetSubtitle(
                  text: listOfStrings[index],
                  size: getHeight(14),
                  color: AppColors.black,
                ),
              ],
            ),
          ).only(bottom: getHeight(20));
        },
      ),
    );
  }
}
