import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/featruers/authentication/screens/passwordConfiguration/resetPassword.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

import '../../../../utils/constants/texts.dart';

class ForgetPasswordScreen extends StatelessWidget{
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(OSizes.defaultSpaces),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              Text(OTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: OSizes.spaceBtwItems),
              Text(OTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: OSizes.spaceBtwSections *2),

              //Text Field
              TextFormField(
                decoration: const InputDecoration(labelText: OTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(height: OSizes.spaceBtwSections *2),

              //Submit Button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.off(() => const ResetPasswordScreen()), child: const Text(OTexts.submit))),
            ],
          ),
      ),
    );
  }


}