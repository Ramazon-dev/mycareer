import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/screens/notifications/widget/elecatedbutton_widget.dart';
import 'package:mycareer/screens/widgets/textwidget_subtitle.dart';
import 'package:mycareer/screens/widgets/textwidget_title.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(getHeight(20)),
          padding: EdgeInsets.all(getHeight(20)),
          height: getHeight(201),
          width: getWidth(320),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getHeight(20),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: getHeight(30),
                    backgroundColor: AppColors.textColor,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidgetTitle(
                        text: 'Need web designer',
                      ),
                      TextWidgetSubtitle(text: 'Need web designer'),
                    ],
                  ).only(left: getHeight(20)),
                ],
              ).only(bottom: getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidgetSubtitle(
                    text: "Invited you for an interview",
                    size: getHeight(12),
                  ),
                  TextWidgetSubtitle(
                    text: "Today",
                    size: getHeight(9),
                  ),
                ],
              ).only(bottom: getHeight(20)),
              ElevatedButtonWidget(
                ontap: () {},
                text: "Go to chat",
              ),
            ],
          ),
        );
      },
    );
  }
}
