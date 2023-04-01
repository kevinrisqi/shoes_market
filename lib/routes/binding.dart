import 'package:get/instance_manager.dart';
import 'package:shoes_market/pages/splash_screen_page/splash_screen_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
