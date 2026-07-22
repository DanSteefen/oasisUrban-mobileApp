import 'package:flutter/material.dart';
import 'package:urbanoasis/common/brand/o_brand_card.dart';
import 'package:urbanoasis/common/roundedContainer/rounded_container.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OBrandShowCases extends StatelessWidget {
  const OBrandShowCases({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ORoundedContainer(
      showBorder: true,
      borderColor: OColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(OSizes.md),
      margin: const EdgeInsets.only(bottom: OSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with products count
          const OBrandCard(showBorder: false),
          const SizedBox(height: OSizes.spaceBtwItems),

          //Brand top 3 product iamges
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: ORoundedContainer(
        height: 100,
        backgroundColor: OHelperFunctions.isDarkMode(context)
            ? OColors.darkGrey
            : OColors.light,
        margin: const EdgeInsets.only(right: OSizes.sm),
        padding: const EdgeInsets.all(OSizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
