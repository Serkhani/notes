import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashCon> {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 100.0,
                width: 100.0,
                child: Lottie.asset(
                  'assets/lottiesplashscreen.json',
                  controller: controller.splashAnimCon,
                  reverse: true,
                  repeat: false,
                ),
              ),
              controller.animationIsCompleted.value
                  ? const CircularProgressIndicator()
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
