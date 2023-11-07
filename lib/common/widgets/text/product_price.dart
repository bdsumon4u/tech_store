import 'package:flutter/material.dart';

class HProductPrice extends StatelessWidget {
  const HProductPrice({
    super.key,
    this.currency = '\$',
    required this.price,
    this.large = false,
    this.lineThrough = false,
    this.maxLines = 1,
  });

  final String currency, price;
  final bool large, lineThrough;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final decoration = lineThrough ? TextDecoration.lineThrough : null;

    return Text(
      currency + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: large
          ? Theme.of(context)
          .textTheme
          .headlineMedium!
          .apply(decoration: decoration)
          : Theme.of(context)
          .textTheme
          .titleLarge!
          .apply(decoration: decoration),
    );
  }
}
