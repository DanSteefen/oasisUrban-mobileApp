import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanoasis/common/style/spacing_styles.dart';
import 'package:urbanoasis/featruers/authentication/screens/login/login.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget{
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: OSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //Image
              Image(image: const AssetImage(OImages.staticSuccessIllustration), width: OHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: OSizes.spaceBtwItems),

              //Title & Sub Title
              Text(OTexts.yourAccountCreatedTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: OSizes.spaceBtwItems),
              Text(OTexts.yourAccountCreatedSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: OSizes.spaceBtwSections),

              //Button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text(OTexts.oContinue))),
            ],
          ),
        ),
      ),
    );
  }


}