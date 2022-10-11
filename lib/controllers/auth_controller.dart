import 'package:get/get.dart';

// Going to be used to check the auth state of the user before routing is done
class UserAuthCon extends GetxController {
  // controller methods will be called by the bindings which will in turn be called in the main method
  @override
  void onReady() {
    // this function runs 1 frame after inititialization
    initAuth();
    super.onReady();
  }

  void initAuth() async {
    // check auth
    await Future.delayed(const Duration(seconds:2));
    // then navigate
    toHomePage();
  }

  void toHomePage() {
    Get.offAllNamed("/");
  }
}
