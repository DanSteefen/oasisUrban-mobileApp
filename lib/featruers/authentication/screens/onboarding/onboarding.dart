import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanoasis/featruers/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/texts.dart';
import 'package:urbanoasis/featruers/authentication/screens/widgets/onboarding_page.dart';
import 'package:urbanoasis/featruers/authentication/screens/widgets/onboarding_skip.dart';
import 'package:urbanoasis/featruers/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:urbanoasis/featruers/authentication/screens/widgets/onboarding_next_button.dart';

class OnboardingScreen extends StatelessWidget{

  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: OImages.onBoardingImage1,
                title: OTexts.onBoardingTitle1,
                subTitle: OTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: OImages.onBoardingImage2,
                title: OTexts.onBoardingTitle2,
                subTitle: OTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: OImages.onBoardingImage3,
                title: OTexts.onBoardingTitle3,
                subTitle: OTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          const OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}






