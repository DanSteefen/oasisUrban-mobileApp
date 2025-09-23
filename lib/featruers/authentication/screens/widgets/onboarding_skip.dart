import 'package:flutter/material.dart';
import 'package:urbanoasis/featruers/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:urbanoasis/utils/device/device_utility.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: ODeviceUtils.getAppBarHeight(),
        right: OSizes.defaultSpaces,
        child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text("Skip"),));
  }
}