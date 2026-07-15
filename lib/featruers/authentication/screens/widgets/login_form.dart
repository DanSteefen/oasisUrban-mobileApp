import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/featruers/authentication/screens/passwordConfiguration/forgetPassword.dart';
import 'package:urbanoasis/featruers/authentication/screens/signup/signup.dart';
import 'package:urbanoasis/navigationMenu.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';

class OLoginForm extends StatelessWidget {
  const OLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: OSizes.spaceBtwSections),
          child: Column(
            children: [
              //Email
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: OTexts.email,
                ),
              ),
              const SizedBox(height: OSizes.spaceBtwInputFields),

              //Password
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: OTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(height: OSizes.spaceBtwInputFields /2),

              //Remember Me & Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Remember Me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(OTexts.rememberMe),
                    ],
                  ),

                  //Forgot Password
                  TextButton(onPressed: () => Get.to(() => const ForgetPasswordScreen()), child: const Text(OTexts.forgotPassword),)
                ],
              ),
              const SizedBox(height: OSizes.spaceBtwSections),

              //Sign In Button
              SizedBox(width:double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(OTexts.signIn))),
              const SizedBox(height: OSizes.spaceBtwItems),

              //Create Account Button
              SizedBox(width:double.infinity,
                  child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(OTexts.createAccount))),
            ],
          )
      ),
    );
  }
}