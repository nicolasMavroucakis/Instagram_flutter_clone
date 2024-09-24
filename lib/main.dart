import 'package:flutter/material.dart';
import 'package:instragam_flutter/responsive/mobile_screen_layout.dart';
import 'package:instragam_flutter/responsive/resposive_layout_screen.dart';
import 'package:instragam_flutter/responsive/web_screen_layout.dart';
import 'package:instragam_flutter/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ReposniveLayout(webScreenLayout: WebScreenLayout(), mobileScreenLayout: MobileScreenLayout()),
    );
  }
}

