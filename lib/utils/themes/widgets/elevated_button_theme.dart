import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/color.dart';

class HElevatedButtonTheme {
  HElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: HColor.light,
      backgroundColor: HColor.primary,
      disabledForegroundColor: HColor.darkGrey,
      disabledBackgroundColor: HColor.buttonDisabled,
      side: const BorderSide(color: HColor.primary),
      padding: const EdgeInsets.symmetric(vertical: HSize.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: HColor.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HSize.buttonRadius)),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: HColor.light,
      backgroundColor: HColor.primary,
      disabledForegroundColor: HColor.darkGrey,
      disabledBackgroundColor: HColor.darkerGrey,
      side: const BorderSide(color: HColor.primary),
      padding: const EdgeInsets.symmetric(vertical: HSize.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: HColor.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HSize.buttonRadius)),
    ),
  );
}
