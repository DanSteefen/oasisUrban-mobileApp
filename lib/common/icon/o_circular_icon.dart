import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OCircularIcon extends StatelessWidget {
  const OCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = OSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPresseed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPresseed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : OHelperFunctions.isDarkMode(context)
                ? OColors.black.withOpacity(0.9)
                : OColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPresseed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
