import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:notes/pages/onboarding_screen.dart';

class SplashCon extends GetxController with GetTickerProviderStateMixin {
  late AnimationController splashAnimCon;
  Rx<bool> animationIsCompleted = false.obs;

  @override
  void onInit() {
    splashAnimCon = AnimationController(vsync: this);
    print("init");

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    splashAnimCon.addListener(
      () {
        if (splashAnimCon.isCompleted) {
          animationIsCompleted.value = true;
          Future.delayed(
            const Duration(seconds: 2),
            () {
              navigate();
            },
          );
        }
      },
    );
    print("onready");
    // animationIsCompleted.listen((isCompleted) {
    //   if (isCompleted) {
    //     // Call auth here
    //     // for auth
    //     Future.delayed(const Duration(seconds: 2), () {
    //       navigate();
    //     });
    //   }
    // });
  }

  @override
  void onClose() {
    print("close");
    super.onClose();
  }

  void navigate() {
    print("navigate");
    // Get.offAllNamed("/onboading");
    Get.offAllNamed(OnboardingScreen.routeName);
    // Get.off(const OnboardingScreen());
    // Get.to(OnboardingScreen());
    // Get.back();
  }

  @override
  void dispose() {
    print("dispose");
    splashAnimCon.dispose();
    super.dispose();
  }
}
