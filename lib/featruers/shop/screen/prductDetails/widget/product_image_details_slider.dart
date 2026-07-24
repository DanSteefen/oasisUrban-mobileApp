import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/appBar/appBar.dart';
import 'package:urbanoasis/common/icon/o_circular_icon.dart';
import 'package:urbanoasis/common/roundedImageWidget/rounded_image_widget.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/curved_edge-widget.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OProductImageSlider extends StatelessWidget {
  const OProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return OCurveEdgeWidget(
      child: Container(
        color: dark ? OColors.darkGrey : OColors.light,
        child: Stack(
          children: [
            //Main LArge Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(OSizes.productImageRadius * 3),
                  child: Center(
                      child: Image(image: AssetImage(OImages.productImage2))),
                )),

            //Image Sliders
            Positioned(
              right: 0,
              bottom: 30,
              left: OSizes.defaultSpaces,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: OSizes.spaceBtwItems),
                  itemBuilder: (_, index) => ORoundedImage(
                    width: 40,
                    backgroundColor: dark ? OColors.dark : OColors.white,
                    border: Border.all(color: OColors.primary),
                    padding: const EdgeInsets.all(OSizes.sm),
                    imageUrl: OImages.productImage4,
                  ),
                ),
              ),
            ),

            //AppBar Icon
            const OAppBar(
              showBackArrow: true,
              actions: [
                OCircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
