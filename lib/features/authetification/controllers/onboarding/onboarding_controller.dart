import 'package:e_commerce_pro/features/authetification/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; //bibliothèque GetX qui facilite la gestion de l'état dans une application Flutter.

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update Current Index when Page Scroll || Mise à jour de l'index actuel lors du défilement de la page
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump to the specific dot seleted page || Sauter à la page spécifique sélectionnée par le point
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //Update Current Index & Jump to next page || Mise à jour de l'index actuel et passage à la page suivante
  void nextPage(){
      print(currentPageIndex.value);
    if(currentPageIndex.value == 2){
      print("ok");
      Get.to(const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update Current Index & Jump to the last Page || Mise à jour de l'index actuel et saut à la dernière page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

}