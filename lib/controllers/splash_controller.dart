import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SplashCon extends GetxController with GetTickerProviderStateMixin {
  late AnimationController splashAnimCon;
  Rx<bool> animationIsCompleted = false.obs;

  @override
  void onInit() {
    splashAnimCon = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    splashAnimCon.forward();
    splashAnimCon.addStatusListener(
      (status) {
        if (splashAnimCon.isCompleted) {
          animationIsCompleted.value = true;
          // Call auth here
        }
      },
    );
    super.onInit();
  }

  @override
  void dispose() {
    splashAnimCon.dispose();
    super.dispose();
  }
}
