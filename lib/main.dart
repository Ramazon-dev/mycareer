import 'package:flutter/material.dart';
import 'package:mycareer/core/theme/app_theme.dart';
import 'package:mycareer/core/theme/mode/dark_mode.dart';
import 'package:mycareer/core/theme/mode/light_mode.dart';
import 'package:mycareer/screens/home/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Career',
      theme: darkThemeData(),
      // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      
      home: const HomePage(),
    );
  }
}
