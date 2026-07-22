import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class ORoundedContainer extends StatelessWidget {
  const ORoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = OSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = OColors.borderPrimary,
      this.backgroundColor = OColors.white,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color? borderColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor!) : null,
      ),
      child: child,
    );
  }
}
