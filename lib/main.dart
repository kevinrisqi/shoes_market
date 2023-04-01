import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_market/pages/splash_screen_page/splash_screen_page.dart';
import 'package:shoes_market/routes/binding.dart';
import 'package:shoes_market/routes/route.dart';
import 'package:shoes_market/routes/route_name.dart';
import 'package:shoes_market/shared/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.splashScreen,
      getPages: pages,
      initialBinding: HomeBinding(),
    );
  }
}