import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/enums.dart';

class HBrandTitle extends StatelessWidget {
  const HBrandTitle({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.size = TextSize.small,
    this.align = TextAlign.center,
  });

  final String title;
  final Color? color;
  final int maxLines;
  final TextSize size;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      style: size == TextSize.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : size == TextSize.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : size == TextSize.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
