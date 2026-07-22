import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/icon/o_circular_icon.dart';
import 'package:urbanoasis/common/roundedContainer/rounded_container.dart';
import 'package:urbanoasis/common/roundedImageWidget/rounded_image_widget.dart';
import 'package:urbanoasis/common/style/shadows.dart';
import 'package:urbanoasis/common/text/o_brand_title_text_with_verified_icon.dart';
import 'package:urbanoasis/common/text/product_title_text.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OProductCardVertical extends StatelessWidget {
  const OProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [OShadows.verticalProductCardShadow],
          borderRadius: BorderRadius.circular(OSizes.productImageRadius),
          color: dark ? OColors.darkGrey : OColors.white,
        ),
        child: Column(
          children: [
            //Thumbnail, Wishlist Button, Discount Tag
            ORoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(OSizes.sm),
              backgroundColor: dark ? OColors.dark : OColors.light,
              child: Stack(
                children: [
                  //Thumbnail Image
                  const ORoundedImage(
                    imageUrl: OImages.productImage1,
                    applyImageRadius: true,
                  ),

                  //Seal Tag
                  Positioned(
                    top: 12,
                    child: ORoundedContainer(
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
                  ),

                  //Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: OCircularIcon(
                          icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(
              height: OSizes.spaceBtwItems / 2,
            ),

            //Details
            const Padding(
              padding: EdgeInsets.only(left: OSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OProductTitleText(
                      title:
                          'Nike shoes are globally renowned for blending cutting-edge athletic performance with iconic streetwear style.',
                      smallSize: true),
                  SizedBox(height: OSizes.spaceBtwItems / 2),
                  OBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),

            //Spacer
            const Spacer(),

            //Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                Padding(
                  padding: const EdgeInsets.only(left: OSizes.sm),
                  child: Text('\$45',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium),
                ),

                //Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: OColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(OSizes.cardRadiusMd),
                      bottomRight: Radius.circular(OSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: OSizes.iconLg * 1.2,
                      height: OSizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(Iconsax.add, color: OColors.white))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
