import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';

class HTextFormFieldTheme {
  HTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: HColor.darkGrey,
    suffixIconColor: HColor.darkGrey,
    // constraints: const BoxConstraints.expand(height: HSize.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: HSize.fontSizeMd, color: HColor.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: HSize.fontSizeSm, color: HColor.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: HColor.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: HColor.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: HColor.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: HColor.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: HColor.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: HColor.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: HColor.darkGrey,
    suffixIconColor: HColor.darkGrey,
    // constraints: const BoxConstraints.expand(height: HSize.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: HSize.fontSizeMd, color: HColor.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: HSize.fontSizeSm, color: HColor.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: HColor.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: HColor.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: HColor.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: HColor.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: HColor.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(HSize.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: HColor.warning),
    ),
  );
}
