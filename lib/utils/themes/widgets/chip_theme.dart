import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/color.dart';

class HChipTheme {
  HChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: HColor.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: HColor.black),
    selectedColor: HColor.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: HColor.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: HColor.darkerGrey,
    labelStyle: TextStyle(color: HColor.white),
    selectedColor: HColor.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: HColor.white,
  );
}
