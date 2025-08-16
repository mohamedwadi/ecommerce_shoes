import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/login/screens/login_screen.dart';

class OnBoardingControllers extends GetxController{

   // == Get.<OnBoardingConrollers>find
  static OnBoardingControllers get instance => Get.find();

  Rx<int> currentPageIndex = 0.obs;
  final pageController = PageController();

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific dot selected page.
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // If last page, do something else (like navigate to home)
      Get.to(LoginScreen());
    }else {
      currentPageIndex.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  /// Update Current Index & jump to the last Page
  void skipPage() {
    pageController.animateToPage(2 ,duration: Duration(milliseconds: 300 ,), curve: Curves.easeIn);
  }

}