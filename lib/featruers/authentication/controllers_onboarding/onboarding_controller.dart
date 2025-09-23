import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  // VARIABLE
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // UPDATE CURRENT INDEX WHEN PAGE SCROLL
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // JUMP TO THE SPECIFIC DOT SELECTED PAGE
  void doNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // UPDATE CURRENT INDEX & JUMP TO NEXT PAGE
  void nextPage(){
    if(currentPageIndex.value == 2){
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // UPDATE CURRENT INDEX & JUMP TO TGE LAST PAGE
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}