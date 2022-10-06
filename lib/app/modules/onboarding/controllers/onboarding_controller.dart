import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final currentIndex = 0.obs;

  PageController pageController = PageController();

  void changePage(int currentIndex) {
    this.currentIndex.value = currentIndex;
  }

  //* Function to handle button right

  void rightTap() {
    if (currentIndex.value != 2) {
      pageController.animateToPage(
        currentIndex.value + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      //! WIP navigation to login page
    }
  }

  //* Function to handle button left

  void leftTap() {
    if (currentIndex.value == 0) {
      pageController.animateToPage(
        currentIndex.value + 2,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      pageController.animateToPage(
        currentIndex.value - 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
