import 'package:flutter/material.dart';
import 'package:urbanoasis/common/roundedContainer/rounded_container.dart';
import 'package:urbanoasis/common/roundedImageWidget/o_circular_image.dart';
import 'package:urbanoasis/common/text/o_brand_title_text_with_verified_icon.dart';
import 'package:urbanoasis/common/text/product_price_text.dart';
import 'package:urbanoasis/common/text/product_title_text.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/enums.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OProductMetaData extends StatelessWidget {
  const OProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = OHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price & Sale Price
        Row(
          children: [
            //Sale Tag
            ORoundedContainer(
              radius: OSizes.sm,
              backgroundColor: OColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: OSizes.sm, vertical: OSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: OColors.black)),
            ),
            const SizedBox(width: OSizes.spaceBtwItems),

            //Price
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: OSizes.spaceBtwItems),
            const OProductPriceText(price: '200', isLarge: true),
          ],
        ),
        const SizedBox(width: OSizes.spaceBtwItems / 1.5),

        //Title
        const OProductTitleText(title: 'Red Nike Shoe'),
        const SizedBox(width: OSizes.spaceBtwItems / 1.5),

        //Stock Status
        Row(
          children: [
            const OProductTitleText(title: 'Status'),
            const SizedBox(width: OSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: OSizes.spaceBtwItems / 1.5),

        //Brand
        Row(
          children: [
            OCircularImage(
              image: OImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: darkMode ? OColors.white : OColors.black,
            ),
            const OBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
