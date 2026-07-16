import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';

class OCircularContainer extends StatelessWidget {
  const OCircularContainer({
    super.key,
    this.child,
    this.width = 500,
    this.height = 500,
    this.radius = 500,
    this.padding = 0,
    this.backgroundColor = OColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}