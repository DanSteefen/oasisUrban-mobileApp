import 'package:flutter/material.dart';
import 'package:urbanoasis/featruers/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:urbanoasis/utils/device/device_utility.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;
    final dark = OHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: ODeviceUtils.getBottomNavigationBarHeight() + 25,
      left: OSizes.defaultSpaces,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.doNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark? OColors.light: OColors.dark, dotHeight: 6),
      ),
    );
  }
}