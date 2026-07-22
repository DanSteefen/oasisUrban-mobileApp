import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/text/o_brand_title_text.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/enums.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class OBrandTitleWithVerifiedIcon extends StatelessWidget {
  const OBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = OColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: OBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: OSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: OColors.primary,
          size: OSizes.iconXs,
        )
      ],
    );
  }
}
