import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

// Bindings are properties of the GetPage and navigation methods(Get.to()) and are used to manage the dependencies(through Get.put()) for the route which is being opened

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    // used to inject controllers
    Get.put(UserAuthCon(), permanent: true);
  }
}
