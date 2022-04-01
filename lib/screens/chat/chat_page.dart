import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getHeight(60),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        backgroundColor: AppColors.textColor,
        iconTheme: const IconThemeData(color: AppColors.white),
        centerTitle: true,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: getHeight(22),
            ).only(right: getHeight(20)),
            const Text(
              'Napa Automative',
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: AppIcons.scaffold(),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(getHeight(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
