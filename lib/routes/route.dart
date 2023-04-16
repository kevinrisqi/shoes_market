import 'package:get/get.dart';
import 'package:shoes_market/pages/home_page/home_page.dart';
import 'package:shoes_market/pages/login_page/login_page.dart';
import 'package:shoes_market/pages/register_page/register_page.dart';
import 'package:shoes_market/pages/splash_screen_page/splash_screen_page.dart';
import 'package:shoes_market/routes/binding.dart';
import 'package:shoes_market/routes/route_name.dart';

List<GetPage> pages = [
  GetPage(
    name: RouteName.splashScreen,
    page: () => const SplashScreenPage(),
  ),
  GetPage(
    name: RouteName.home,
    page: () => const HomePage(),
  ),
  GetPage(
    name: RouteName.login,
    page: () => const LoginPage(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: RouteName.register,
    page: () => const RegisterPage(),
    binding: RegisterBinding(),
  ),
];
