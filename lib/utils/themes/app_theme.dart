import 'package:flutter/material.dart';
import 'package:t_store/utils/themes/widgets/appbar_theme.dart';
import 'package:t_store/utils/themes/widgets/bottom_sheet_theme.dart';
import 'package:t_store/utils/themes/widgets/checkbox_theme.dart';
import 'package:t_store/utils/themes/widgets/chip_theme.dart';
import 'package:t_store/utils/themes/widgets/elevated_button_theme.dart';
import 'package:t_store/utils/themes/widgets/outlined_button_theme.dart';
import 'package:t_store/utils/themes/widgets/text_field_theme.dart';
import 'package:t_store/utils/themes/widgets/text_theme.dart';
import 'package:t_store/utils/constants/color.dart';

class HAppTheme {
  HAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: HColor.grey,
    brightness: Brightness.light,
    primaryColor: HColor.primary,
    textTheme: HTextTheme.lightTextTheme,
    chipTheme: HChipTheme.lightChipTheme,
    scaffoldBackgroundColor: HColor.white,
    appBarTheme: HAppBarTheme.lightAppBarTheme,
    checkboxTheme: HCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: HBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: HElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: HOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: HTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: HColor.grey,
    brightness: Brightness.dark,
    primaryColor: HColor.primary,
    textTheme: HTextTheme.darkTextTheme,
    chipTheme: HChipTheme.darkChipTheme,
    scaffoldBackgroundColor: HColor.black,
    appBarTheme: HAppBarTheme.darkAppBarTheme,
    checkboxTheme: HCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: HBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: HElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: HOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: HTextFormFieldTheme.darkInputDecorationTheme,
  );
}
