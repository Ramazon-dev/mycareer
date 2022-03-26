import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';
import 'package:easy_padding/easy_padding.dart';
import 'package:mycareer/screens/widgets/textwidget_subtitle.dart';
import 'package:mycareer/screens/widgets/textwidget_title.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            getHeight(20),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(getHeight(20)),
                height: getHeight(290),
                width: getWidth(320),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(
                    getHeight(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppIcons.share(),
                        CircleAvatar(
                          radius: getHeight(60),
                          backgroundColor: AppColors.textColor,
                        ),
                        AppIcons.more(),
                      ],
                    ).only(bottom: getHeight(15)),
                    TextWidgetTitle(
                      text: 'Darobov Baxodir',
                      color: AppColors.blue,
                    ).only(bottom: getHeight(10)),
                    TextWidgetTitle(
                      text: 'Web designer',
                      color: AppColors.blue,
                    ).only(bottom: getHeight(10)),
                    TextWidgetTitle(
                      text: '20 Age',
                      color: AppColors.blue,
                    ).only(bottom: getHeight(15)),
                    TextWidgetSubtitle(
                      text: 'You are currently doing 2 jobs',
                      size: getHeight(16),
                      color: AppColors.textColor,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: getHeight(20)),
                padding: EdgeInsets.all(getHeight(20)),
                height: getHeight(724),
                width: getWidth(320),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(
                    getHeight(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidgetTitle(
                          text: 'Profile level: beginner',
                          size: getHeight(18),
                        ),
                        AppIcons.info(),
                      ],
                    ).only(bottom: getHeight(25)),
                    SizedBox(
                      height: getHeight(13),
                      child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: getHeight(5)),
                            height: getHeight(12),
                            width: getHeight(30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHeight(20),
                              ),
                              color: index <= 2
                                  ? AppColors.textColor
                                  : AppColors.lightGrey,
                            ),
                          );
                        },
                      ),
                    ).only(bottom: getHeight(30)),
                    TextWidgetTitle(
                      text: "Skills & Portfolio",
                      size: getHeight(18),
                    ).only(bottom: getHeight(20)),
                    SizedBox(
                      height: getHeight(30),
                      child: ListView.builder(
                        itemCount: 4,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: getHeight(11)),
                            padding: EdgeInsets.symmetric(
                              horizontal: getWidth(10),
                              vertical: getHeight(5),
                            ),
                            alignment: Alignment.center,
                            height: getHeight(30),
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius:
                                  BorderRadius.circular(getHeight(20)),
                            ),
                            child: TextWidgetSubtitle(text: 'Figma'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
