import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/device/device_utility.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OSearchContainer extends StatelessWidget {
  const OSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: OSizes.defaultSpaces),
        child: Container(
            width: ODeviceUtils.getScreenHeight(context),
            padding: const EdgeInsets.all(OSizes.md),
            decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? OColors.dark
                      : OColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(OSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: OColors.grey) : null,
            ),
            child: Row(
              children: [
                Icon(icon, color: OColors.darkGrey),
                const SizedBox(width: OSizes.spaceBtwSections),
                Text(text, style: Theme.of(context).textTheme.bodySmall),
              ],
            )),
      ),
    );
  }
}
