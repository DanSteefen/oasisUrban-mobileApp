import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/constants/colors.dart';

class OShadows {
  static final verticalProductCardShadow = BoxShadow(
    color: OColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2), // changes position of shadow
  );

  static final horizontalProductCardShadow = BoxShadow(
    color: OColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2), // changes position of shadow
  );
}
