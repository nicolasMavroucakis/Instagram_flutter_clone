import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instragam_flutter/responsive/mobile_screen_layout.dart';
import 'package:instragam_flutter/responsive/resposive_layout_screen.dart';
import 'package:instragam_flutter/responsive/web_screen_layout.dart';
import 'package:instragam_flutter/utils/colors.dart';
import "package:firebase_core/firebase_core.dart";
import 'package:instragam_flutter/screens/login_screnn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: "AIzaSyDxw0zJ6hlXI4vlWBbeALaQVbLeadj8dVY",authDomain: "instagram-tut-e201a.firebaseapp.com",projectId: "instagram-tut-e201a",storageBucket: "instagram-tut-e201a.appspot.com",messagingSenderId: "8901417424",appId: "1:8901417424:web:32ceaa3996fff58d4101d5")
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const LoginScreen(), //const ReposniveLayout(webScreenLayout: WebScreenLayout(), mobileScreenLayout: MobileScreenLayout()),
      
    );
  }
}

