
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/style/spacing_styles.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/constants/texts.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

import '../widgets/login_form.dart';
import '../widgets/login_form_divider.dart';
import '../widgets/login_form_social_button.dart';
import '../widgets/login_header.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: OSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title & Sub-Title
              OLoginHeader(dark: dark),

              //Form
              const OLoginForm(),

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







