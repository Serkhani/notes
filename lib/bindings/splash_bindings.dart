import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashCon());
    // Get.put(UserAuthCon());
  }
}
