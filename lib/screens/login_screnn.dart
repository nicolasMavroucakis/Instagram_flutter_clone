// ignore_for_file: library_private_types_in_public_api
import 'package:flutter_svg'
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture
          ],
        ),
      )
      ),
    );
  }
}
