import 'package:flutter/material.dart';
import 'package:urbanoasis/common/chip/choise_chip.dart';
import 'package:urbanoasis/common/roundedContainer/rounded_container.dart';
import 'package:urbanoasis/common/text/product_price_text.dart';
import 'package:urbanoasis/common/text/product_title_text.dart';
import 'package:urbanoasis/common/text/section_heading.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OProductAttributes extends StatelessWidget {
  const OProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Column(
      //Selected Attribute Pricing & Description
      children: [
        ORoundedContainer(
          padding: const EdgeInsets.all(OSizes.md),
          backgroundColor: dark ? OColors.darkGrey : OColors.grey,
          child: Column(
            children: [
              //Title, Price and Stock Status
              Row(
                children: [
                  const OSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: OSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const OProductTitleText(title: 'Price', smallSize: true),

                      //Actual Price
                      Text(
                        '\$25',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: OSizes.spaceBtwItems),

                      //Sale Price
                      const OProductPriceText(price: '20'),

                      //Stock
                      Row(
                        children: [
                          const OProductTitleText(
                              title: 'Stock', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              //Variation Desription
              const OProductTitleText(
                title: 'This shoe is very expensive and comfortable',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(width: OSizes.spaceBtwItems),

        //Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(height: OSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                OChoiseChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                OChoiseChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                OChoiseChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OSectionHeading(title: 'Size'),
            const SizedBox(height: OSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                OChoiseChip(
                    text: 'UK 39', selected: true, onSelected: (value) {}),
                OChoiseChip(
                    text: 'UK 40', selected: false, onSelected: (value) {}),
                OChoiseChip(
                    text: 'UK 41', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
