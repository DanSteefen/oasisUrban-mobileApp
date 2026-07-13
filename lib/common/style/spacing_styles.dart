import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class OSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: OSizes.appBarHeight,
    left: OSizes.defaultSpaces,
    bottom: OSizes.defaultSpaces,
    right: OSizes.defaultSpaces,
  );
}