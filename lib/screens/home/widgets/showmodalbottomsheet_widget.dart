import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';
import 'package:mycareer/screens/widgets/textwidget_title.dart';

class ShowModalBottomSheetWidget extends StatelessWidget {
  ShowModalBottomSheetWidget({Key? key}) : super(key: key);

  List<String> listOfStrings = [
    "Top rating",
    "Settings",
    "Night mode",
    "About us",
  ];
  List<Widget> listOfWidgets = [
    AppIcons.star(),
    AppIcons.settings(),
    AppIcons.nightmode(),
    AppIcons.info(),
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(getHeight(30)),
              height: getHeight(334),
              width: getWidth(360),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(getHeight(20)),
                  topRight: Radius.circular(getHeight(20)),
                ),
                color: AppColors.white.withOpacity(0.7),
              ),
              child: ListView.builder(
                itemCount: listOfStrings.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: getWidth(20)),
                      height: getHeight(46),
                      width: getWidth(280),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getHeight(15)),
                          color: AppColors.white),
                      child: Row(
                        children: [
                          listOfWidgets[index].only(right: getWidth(20)),
                          TextWidgetTitle(text: listOfStrings[index]),
                        ],
                      ),
                    ).only(bottom: getHeight(20)),
                  );
                },
              ),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: AppIcons.drawerMenu(
          color: AppColors.textColor,
          size: getHeight(20),
        ),
      ),
    );
  }
}
