import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/device/device_utility.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';
import 'package:urbanoasis/utils/constants/colors.dart';

import '../../controllers_onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = OHelperFunctions.isDarkMode(context);

    return Positioned(
      right: OSizes.defaultSpaces,
      bottom: ODeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark? OColors.primary : Colors.black),
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}