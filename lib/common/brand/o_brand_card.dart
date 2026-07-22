import 'package:flutter/material.dart';
import 'package:urbanoasis/common/roundedContainer/rounded_container.dart';
import 'package:urbanoasis/common/roundedImageWidget/o_circular_image.dart';
import 'package:urbanoasis/common/text/o_brand_title_text_with_verified_icon.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/enums.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OBrandCard extends StatelessWidget {
  const OBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ORoundedContainer(
        padding: const EdgeInsets.all(OSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: OCircularImage(
                isNetworImage: false,
                image: OImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: OHelperFunctions.isDarkMode(context)
                    ? OColors.white
                    : OColors.black,
              ),
            ),
            const SizedBox(width: OSizes.spaceBtwItems / 2),

            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OBrandTitleWithVerifiedIcon(
                      title: 'Nike', brandTextSize: TextSizes.large),
                  Text(
                    '200 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
