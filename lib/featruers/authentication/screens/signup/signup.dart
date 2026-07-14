import 'package:flutter/material.dart';

import 'package:urbanoasis/featruers/authentication/screens/widgets/login_form_divider.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/constants/texts.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

import '../widgets/login_form_social_button.dart';
import '../widgets/signup_form.dart';

class SignupScreen extends StatelessWidget{
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(OSizes.defaultSpaces),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(OTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: OSizes.spaceBtwSections),

              //Form
              OSignupForm(dark: dark),

              //Divider
              OLoginFormDivider(dark: dark),
              const SizedBox(height: OSizes.spaceBtwSections),

              //Footer
              const OLoginFormSocialButton(),

            ],
          ),
        ),
      ),
    );
  }

}

