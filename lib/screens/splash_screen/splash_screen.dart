import 'package:easy_padding/extentions/padding_extentions.dart';
import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/core/theme/app_colors.dart';
import 'package:mycareer/core/theme/app_icons.dart';
import 'package:mycareer/screens/home/home_page.dart';
import 'package:mycareer/screens/notifications/widget/elecatedbutton_widget.dart';
import 'package:mycareer/screens/widgets/textwidget_title.dart';

class SplashSceen extends StatelessWidget {
  const SplashSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: getWidth(30),
          right: getWidth(30),
          top: getHeight(100),
        ),
        child: Column(
          children: [
            Image(
              image: const AssetImage(
                "assets/images/splash.png",
              ),
              height: getHeight(307),
            ),
            TextWidgetTitle(
              text: """
Started to Discover
      New Job
""",
              size: getHeight(24),
            ).only(bottom: getHeight(100), top: getHeight(100)),
            ElevatedButtonWidget(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              text: 'Get started',
            ),
          ],
        ),
      ),
    );
  }
}
