import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';
import '../utils/onboarding_elements.dart';

class OnboardingScreen extends GetView<OnBoardingCon> {
  const OnboardingScreen({Key? key}) : super(key: key);
  static const String routeName = "/onboarding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    controller.skip();
                  },
                  child: const Text("Skip"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 400.0,
            child: PageView(
              controller: controller.pageCon,
              onPageChanged: (index) {
                controller.index.value = index;
              },
              children: controller.onboardingElements
                  .map(
                    (e) => OnBoardingElementWid(
                      element: e,
                    ),
                  )
                  .toList(),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  controller.index.value >= 2
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(150.0, 50.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          child: const Text("Reset"),
                          onPressed: () {
                            controller.resetPage();
                          },
                        )
                      : Container(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150.0, 50.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text("Next"),
                    onPressed: () {
                      controller.nextPage();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingElementWid extends StatelessWidget {
  const OnBoardingElementWid({super.key, required this.element});
  final OnBoardingElement element;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(height: 200.0, child: Image.asset(element.imgPath)),
        ),
        Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 17.0),
              text: '${element.notesTitle}\n\n',
              children: [
                TextSpan(
                  text: element.notesSubtitle,
                  style: const TextStyle(fontSize: 12.0),
                )
              ],
            ),
            overflow: TextOverflow.fade),
      ],
    );
  }
}
