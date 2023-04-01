import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shoes_market/routes/route_name.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Future.microtask(() async {
      await Future.delayed(const Duration(seconds: 3));
      Get.toNamed(RouteName.home);
    });
    super.onInit();
  }
}
