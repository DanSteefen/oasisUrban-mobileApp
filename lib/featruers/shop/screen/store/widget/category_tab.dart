import 'package:flutter/material.dart';
import 'package:urbanoasis/common/brand/o_brand_show_case.dart';
import 'package:urbanoasis/common/layout/grid_layout.dart';
import 'package:urbanoasis/common/product/product_card_vertical.dart';
import 'package:urbanoasis/common/text/section_heading.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class OCategoryTab extends StatelessWidget {
  const OCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(OSizes.defaultSpaces),
            child: Column(
              children: [
                //Brands
                const OBrandShowCases(images: [
                  OImages.productImage1,
                  OImages.productImage2,
                  OImages.productImage3
                ]),
                const OBrandShowCases(images: [
                  OImages.productImage1,
                  OImages.productImage2,
                  OImages.productImage3
                ]),
                const SizedBox(height: OSizes.spaceBtwItems),

                //Products
                OSectionHeading(title: 'You might like', onPressed: () {}),
                const SizedBox(height: OSizes.spaceBtwItems),

                OGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const OProductCardVertical()),
                const SizedBox(height: OSizes.spaceBtwSections),
              ],
            ),
          ),
        ]);
  }
}
