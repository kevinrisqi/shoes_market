import 'package:get/instance_manager.dart';
import 'package:shoes_market/pages/login_page/login_controller.dart';
import 'package:shoes_market/pages/register_page/register_controller.dart';
import 'package:shoes_market/pages/splash_screen_page/splash_screen_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
