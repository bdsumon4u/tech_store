import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/color.dart';

class HAppBarTheme {
  HAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: HColor.black, size: HSize.iconMd),
    actionsIconTheme: IconThemeData(color: HColor.black, size: HSize.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: HColor.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: HColor.black, size: HSize.iconMd),
    actionsIconTheme: IconThemeData(color: HColor.white, size: HSize.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: HColor.white),
  );
}
