import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/text/brand_title.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/size.dart';

class HBrandTitleVerified extends StatelessWidget {
  const HBrandTitleVerified({
    super.key,
    this.textColor,
    required this.title,
    this.maxLines = 1,
    this.iconColor = HColor.primary,
    this.align = TextAlign.center,
    this.size = TextSize.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign align;
  final TextSize size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: HBrandTitle(
            title: title,
            color: textColor,
            maxLines: maxLines,
            align: align,
            size: size,
          ),
        ),
        const SizedBox(width: HSize.xs),
        Icon(Iconsax.verify5, color: iconColor, size: HSize.iconXs),
      ],
    );
  }
}
