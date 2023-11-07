import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/color.dart';

class HShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: HColor.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2),
  );
}
