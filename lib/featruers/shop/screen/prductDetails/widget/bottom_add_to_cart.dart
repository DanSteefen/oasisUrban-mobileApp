import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/icon/o_circular_icon.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OBottomAddToCart extends StatelessWidget {
  const OBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: OSizes.defaultSpaces, vertical: OSizes.defaultSpaces / 2),
      decoration: BoxDecoration(
        color: dark ? OColors.darkerGrey : OColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(OSizes.cardRadiusLg),
          topRight: Radius.circular(OSizes.cardRadiusLg),
        ),
      ),

      //Cart to Add and Minus
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const OCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: OColors.darkGrey,
                width: 40,
                height: 40,
                color: OColors.white,
              ),
              const SizedBox(width: OSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: OSizes.spaceBtwItems),
              const OCircularIcon(
                icon: Iconsax.add,
                backgroundColor: OColors.black,
                width: 40,
                height: 40,
                color: OColors.white,
              ),
            ],
          ),

          //Elevated Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(OSizes.md),
              backgroundColor: OColors.black,
              side: const BorderSide(color: OColors.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
