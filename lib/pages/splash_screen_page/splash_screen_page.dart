import 'package:flutter/material.dart';
import 'package:shoes_market/shared/colors.dart';
import 'package:shoes_market/shared/constants.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Center(
        child: Image.asset(imageLogoSplash, width: 130, height: 150,),
      ),
    );
  }
}

