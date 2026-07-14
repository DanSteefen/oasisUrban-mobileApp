import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanoasis/featruers/authentication/screens/login/login.dart';
import 'package:urbanoasis/featruers/authentication/screens/success/successScreen.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/constants/texts.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget{
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        //Padding To Give Default Equal Space On All Side In All Screens
        child: Padding(
            padding: const EdgeInsets.all(OSizes.defaultSpaces),
            child: Column(
              children: [
                //Image
                Image(image: const AssetImage(OImages.deliveryEmailIllustration), width: OHelperFunctions.screenWidth() * 0.6,),
                const SizedBox(height: OSizes.spaceBtwItems),

                //Title & Sub Title
                Text(OTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: OSizes.spaceBtwItems),
                Text('danindugunasekara@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
                const SizedBox(height: OSizes.spaceBtwItems),
                Text(OTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                const SizedBox(height: OSizes.spaceBtwSections),

                //Button
                SizedBox(width: double.infinity,
                    child: ElevatedButton(onPressed: () => Get.to(() => const SuccessScreen()),
                    child: const Text(OTexts.oContinue))),
                const SizedBox(height: OSizes.spaceBtwItems),
                SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(OTexts.resendEmail))),
              ],
            ),
        ),
      ),
    );
  }


}