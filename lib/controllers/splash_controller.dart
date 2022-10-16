import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:notes/pages/onboarding_screen.dart';

class SplashCon extends GetxController with GetTickerProviderStateMixin {
  late AnimationController splashAnimCon;
  Rx<bool> animationIsCompleted = false.obs;

  @override
  void onInit() {
    splashAnimCon = AnimationController(vsync: this);
    super.onInit();
  }

  @override
  void onReady() {
    splashAnimCon.addListener(
      () {
        if (splashAnimCon.isCompleted) {
          animationIsCompleted.value = true;
          // Call auth here
        // for auth
          Future.delayed(
            const Duration(seconds: 2),
            () {
              navigate();
            },
          );
        }
      },
    );
    super.onReady();
  }

  @override
  void navigate() {
    Get.offAllNamed(OnboardingScreen.routeName);
  }

  @override
  void dispose() {
    splashAnimCon.dispose();
    super.dispose();
  }
}
