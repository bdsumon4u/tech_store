import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HRoundedIcon extends StatelessWidget {
  const HRoundedIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = HSize.md,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final IconData icon;
  final double? width, height, size;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(HSize.md),
        color: HelperH.isDarkMode(context)
            ? HColor.black.withOpacity(0.9)
            : HColor.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
        color: backgroundColor,
      ),
    );
  }
}
