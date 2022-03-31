import 'package:flutter/material.dart';
import 'package:mycareer/core/constants/sizeconfig.dart';
import 'package:mycareer/screens/notifications/notification_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: NotificationWidget(),
    );
  }
}
