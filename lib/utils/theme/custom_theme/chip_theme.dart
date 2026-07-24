import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/constants/colors.dart';

class OChipTheme {
  OChipTheme._();

  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: OColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: OColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: OColors.white,
  );

  static ChipThemeData darkChipThemeData = ChipThemeData(
    disabledColor: OColors.darkGrey.withOpacity(0.4),
    labelStyle: const TextStyle(color: OColors.white),
    selectedColor: OColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: OColors.white,
  );
}
