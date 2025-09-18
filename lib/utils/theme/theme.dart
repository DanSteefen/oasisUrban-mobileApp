import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/theme/custom_theme/Outlined_button_theme.dart';
import 'package:urbanoasis/utils/theme/custom_theme/appbar_theme.dart';
import 'package:urbanoasis/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:urbanoasis/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:urbanoasis/utils/theme/custom_theme/chip_theme.dart';
import 'package:urbanoasis/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:urbanoasis/utils/theme/custom_theme/text_filed_theme.dart';
import 'package:urbanoasis/utils/theme/custom_theme/text_theme.dart';

class OAppTheme{
  OAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: OTextTheme.lightTextTheme,
    elevatedButtonTheme: OElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: OAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: OBottomSheetTheme.lightBottomSheetThemeData,
    checkboxTheme: OCheckBoxThemeData.lightCheckboxThemeData,
    chipTheme: OChipTheme.lightChipThemeData,
    outlinedButtonTheme: OOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: OTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: OTextTheme.darkTextTheme,
    elevatedButtonTheme: OElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: OAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: OBottomSheetTheme.darkBottomSheetThemeData,
    checkboxTheme: OCheckBoxThemeData.darkCheckboxThemeData,
    chipTheme: OChipTheme.darkChipThemeData,
    outlinedButtonTheme: OOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: OTextFormFieldTheme.darkInputDecorationTheme,
  );
}
