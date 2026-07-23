import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OVerticalImageText extends StatelessWidget {
  const OVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = OColors.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: OSizes.spaceBtwItems),
        child: Column(
          children: [
            //Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(OSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? OColors.black : OColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? OColors.light : OColors.dark,
                ),
              ),
            ),
            //Text
            const SizedBox(height: OSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
