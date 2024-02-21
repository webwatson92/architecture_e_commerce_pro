import 'package:e_commerce_pro/features/authetification/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_pro/features/authetification/screens/onboarding/widgets/OnBoardingNativation.dart';
import 'package:e_commerce_pro/features/authetification/screens/onboarding/widgets/OnBoardingNextButton.dart';
import 'package:e_commerce_pro/features/authetification/screens/onboarding/widgets/OnBoardingPage.dart';
import 'package:e_commerce_pro/features/authetification/screens/onboarding/widgets/OnBoardingSkip.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
// import 'package:e_commerce_pro/features/authetification/controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

 
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return  Scaffold(
        body: Stack(
            children: [
              ///Horizontal scrollable pages
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: const [
                  OnBoardingPage(
                    images: TImages.onBoardingImage1, 
                    title: TTexts.onBoardingTitle1, 
                    subtitle: TTexts.onBoardingSubTitle1,
                  ),
                  OnBoardingPage(
                    images: TImages.onBoardingImage2, 
                    title: TTexts.onBoardingTitle2, 
                    subtitle: TTexts.onBoardingSubTitle2,
                  ),
                  OnBoardingPage(
                    images: TImages.onBoardingImage3, 
                    title: TTexts.onBoardingTitle3, 
                    subtitle: TTexts.onBoardingSubTitle3,
                  ),
                ],
              ),
              
              ///Skip button
              const OnBoardingSkip(),
              
              ///Dot Navigation SmoothPageIndicator
              const OnBoardingNavigation(),

              ///Circular Button
              const OnBoardingNextButton()
            ],
        ),
    );
  }
}

