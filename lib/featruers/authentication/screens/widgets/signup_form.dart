import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/featruers/authentication/screens/verifyEmail/verifyEmail.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';

class OSignupForm extends StatelessWidget {
  const OSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        // First Name & Last Name
        Row(
          children: [
            Expanded(
              child : TextFormField(
                expands : false,
                decoration: const InputDecoration(
                  labelText: OTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: OSizes.spaceBtwInputFields),

            Expanded(
              child : TextFormField(
                expands : false,
                decoration: const InputDecoration(
                  labelText: OTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: OSizes.spaceBtwInputFields),

        //User Name
        TextFormField(
          expands : false,
          decoration: const InputDecoration(
            labelText: OTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: OSizes.spaceBtwInputFields),

        //Email
        TextFormField(
          expands : false,
          decoration: const InputDecoration(
            labelText: OTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        const SizedBox(height: OSizes.spaceBtwInputFields),

        //Phone Number
        TextFormField(
          expands : false,
          decoration: const InputDecoration(
            labelText: OTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: OSizes.spaceBtwInputFields),

        //Password
        TextFormField(
          expands : false,
          decoration: const InputDecoration(
            labelText: OTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: OSizes.spaceBtwSections),

        //Terms & Conditions Box
        Row(
          children: [
            SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
            const SizedBox(width: OSizes.spaceBtwItems),
            Text.rich(
                TextSpan(children: [
                  TextSpan(text: '${OTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${OTexts.privacyPolicy} ', style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: dark ? OColors.white : OColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? OColors.white : OColors.primary,
                  )),
                  TextSpan(text: '${OTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${OTexts.termsOfUse} ', style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: dark ? OColors.white : OColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? OColors.white : OColors.primary,
                  )),
                ])
            ),
          ],
        ),
        const SizedBox(height: OSizes.spaceBtwSections),

        //Signup Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), child: const Text(OTexts.createAccount))),
      ],
    ),);
  }
}