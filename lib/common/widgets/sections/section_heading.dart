import 'package:flutter/material.dart';

class HSectionHeading extends StatelessWidget {
  const HSectionHeading({
    super.key,
    this.color,
    required this.title,
    this.showButton = true,
    this.buttonText = 'View All',
    this.onPressed,
  });

  final Color? color;
  final bool showButton;
  final String title, buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: color),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
      ],
    );
  }
}
