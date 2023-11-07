import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/enums.dart';

class HProductTitle extends StatelessWidget {
  const HProductTitle({
    super.key,
    this.color,
    required this.title,
    this.maxLines = 2,
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
      style: size == TextSize.small
          ? Theme.of(context).textTheme.labelLarge!.apply(color: color)
          : size == TextSize.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : size == TextSize.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: align,
    );
  }
}
