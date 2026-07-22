import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OCircularImage extends StatelessWidget {
  const OCircularImage({
    super.key,
    this.fit,
    required this.image,
    this.isNetworImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = OSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (OHelperFunctions.isDarkMode(context)
                ? OColors.black
                : OColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
            fit: fit,
            image: isNetworImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            color: overlayColor),
      ),
    );
  }
}
