import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/helper.dart';

class HDivider extends StatelessWidget {
  const HDivider({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? HColor.darkGrey : HColor.primary,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(text, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? HColor.darkGrey : HColor.primary,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
