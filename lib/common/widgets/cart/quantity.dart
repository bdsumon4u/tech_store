import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/rounded_icon.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HCartQuantity extends StatelessWidget {
  const HCartQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        HRoundedIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          color: dark ? HColor.white : HColor.black,
          backgroundColor: dark ? HColor.darkerGrey : HColor.light,
        ),
        const SizedBox(width: HSize.itemSpace),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: HSize.itemSpace),
        HRoundedIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          color: dark ? HColor.white : HColor.black,
          backgroundColor: dark ? HColor.darkerGrey : HColor.light,
        ),
      ],
    );
  }
}
