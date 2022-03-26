import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/screens/widgets/textwidget_subtitle.dart';

class IsEmptyPage extends StatelessWidget {
  const IsEmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(getHeight(20)),
          height: getHeight(337),
          width: getWidth(326),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/notification_empty.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        TextWidgetSubtitle(
          text: 'You have no  notification',
          size: getHeight(18),
        )
      ],
    );
  }
}
