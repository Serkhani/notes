import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:notes/pages/homepage.dart';
import 'package:notes/utils/onboarding_elements.dart';

class OnBoardingCon extends GetxController {
  final onboardingElements = <OnBoardingElement>[
    OnBoardingElement(
        imgPath: 'assets/notes1.jpg',
        notesTitle: "Lorem ipsum dolor sit amet.",
        notesSubtitle:
            "Lorem ipsum dolor sit amet . The graphic and typographic operators know this well, in reality all the professions dealing with the universe of communication have a stable relationship with these words, but what is it? Lorem ipsum is a dummy text without any sense."),
    OnBoardingElement(
        imgPath: 'assets/notes2.jpg',
        notesTitle: "Lorem ipsum dolor sit amet.",
        notesSubtitle:
            "Lorem ipsum dolor sit amet . The graphic and typographic operators know this well, in reality all the professions dealing with the universe of communication have a stable relationship with these words, but what is it? Lorem ipsum is a dummy text without any sense."),
    OnBoardingElement(
        imgPath: 'assets/notes1.jpg',
        notesTitle: "Lorem ipsum dolor sit amet.",
        notesSubtitle:
            "Lorem ipsum dolor sit amet . The graphic and typographic operators know this well, in reality all the professions dealing with the universe of communication have a stable relationship with these words, but what is it? Lorem ipsum is a dummy text without any sense."),
  ];
  late PageController pageCon;
  RxInt index = 0.obs;

  void resetPage() {
    index.value = 0;
  }

  void skip() {
    Get.offNamed(MyHomePage.routeName);
  }

  void nextPage() {
    if (index.value == 2) {
      Get.offNamed(MyHomePage.routeName);
    } else {
      index.value += 1;
    }
    pageCon.animateToPage(index.value, duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
  }


  @override
  void onInit() {
    pageCon = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    pageCon.dispose();
    super.dispose();
  }
}
