import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';



class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(OSizes.defaultSpaces),
      child: Column(
        children: [
          Image(
            width: OHelperFunctions.screenWidth() * 0.8,
            height: OHelperFunctions.screenHeight() * 0.6,
            image:  AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: OSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}