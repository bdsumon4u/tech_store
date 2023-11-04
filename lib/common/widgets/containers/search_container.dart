import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/device.dart';
import 'package:t_store/utils/helper.dart';

class HSearchContainer extends StatelessWidget {
  const HSearchContainer({
    super.key,
    this.onTap,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: HSize.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: HRoundedContainer(
          width: HDevice.getScreenWidth(),
          padding: const EdgeInsets.all(HSize.md),
          backgroundColor: showBackground
              ? dark
                  ? HColor.dark
                  : HColor.light
              : Colors.transparent,
          showBorder: showBorder,
          borderColor: HColor.grey,
          radius: HSize.cardRadiusSm,
          child: Row(
            children: [
              Icon(icon, color: HColor.darkGrey),
              const SizedBox(width: HSize.itemSpace),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
