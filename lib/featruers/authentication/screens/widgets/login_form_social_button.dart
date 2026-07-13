import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class OLoginFormSocialButton extends StatelessWidget {
  const OLoginFormSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                width: OSizes.iconMd,
                height: OSizes.iconMd,
                image: AssetImage(OImages.google)),
          ),
        ),
        const SizedBox(width: OSizes.spaceBtwItems),

        Container(
          decoration: BoxDecoration(border: Border.all(color: OColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                width: OSizes.iconMd,
                height: OSizes.iconMd,
                image: AssetImage(OImages.facebook)),
          ),
        ),
      ],
    );
  }
}