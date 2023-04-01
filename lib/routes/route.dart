import 'package:get/get.dart';
import 'package:shoes_market/pages/home_page/home_page.dart';
import 'package:shoes_market/pages/splash_screen_page/splash_screen_page.dart';
import 'package:shoes_market/routes/route_name.dart';

List<GetPage> pages = [
  GetPage(
    name: RouteName.splashScreen,
    page: () => const SplashScreenPage(),
  ),
  GetPage(
    name: RouteName.home,
    page: () => HomePage(),
  ),
];
