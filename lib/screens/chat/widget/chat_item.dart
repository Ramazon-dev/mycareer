import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/screens/chat/chat_page.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ChatPage())),
      child: Container(
        height: getHeight(77),
        width: getWidth(300),
        padding: EdgeInsets.symmetric(
          horizontal: getHeight(30),
          vertical: getHeight(15),
        ),
        margin: EdgeInsets.only(bottom: getHeight(20)),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            getHeight(20),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff505050),
              spreadRadius: 0.1,
              blurRadius: 0.1,
              offset: Offset(0.5, 0.5),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.textColor,
              radius: getHeight(30),
            ).only(right: getWidth(20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Napa Automative",
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: getHeight(15),
                    fontWeight: FontWeight.w700,
                  ),
                ).only(bottom: getHeight(10)),
                Text(
                  'Online',
                  style: TextStyle(
                    color: AppColors.blue,
                    fontSize: getHeight(14),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
