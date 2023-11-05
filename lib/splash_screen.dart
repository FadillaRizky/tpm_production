import 'package:flutter/material.dart';

import 'package:easy_splash_screen/easy_splash_screen.dart';

import 'menu.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/logo.png"),
      logoWidth: 100,
      title: Text(
        "TPM PRODUCTION",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      backgroundColor: Colors.white,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: Menu(),
      durationInSeconds: 5,
    );
  }
}