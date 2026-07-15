import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/texts.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget{
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(OSizes.defaultSpaces),
            child: Column(
              children: [
                //Images with 60% of Screen Width
                Image(image: const AssetImage(OImages.deliveryEmailIllustration), width: OHelperFunctions.screenWidth() * 0.6,),
                const SizedBox(height: OSizes.spaceBtwItems),

                //Title & Sub Title
                Text(OTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: OSizes.spaceBtwItems),
                Text(OTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                const SizedBox(height: OSizes.spaceBtwSections),

                //Button
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(OTexts.done))),
                const SizedBox(height: OSizes.spaceBtwItems),
                SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(OTexts.resendEmail))),
              ],
            ),
        ),
      ),
    );
  }


}