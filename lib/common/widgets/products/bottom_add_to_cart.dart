import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/icons/rounded_icon.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HProductBottomAddToCart extends StatelessWidget {
  const HProductBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: HSize.defaultSpace,
        vertical: HSize.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? HColor.darkerGrey : HColor.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(HSize.cardRadiusLg),
          topRight: Radius.circular(HSize.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const HRoundedIcon(
                icon: Iconsax.minus,
                backgroundColor: HColor.darkerGrey,
                width: 40,
                height: 40,
                color: HColor.white,
              ),
              const SizedBox(width: HSize.itemSpace),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: HSize.itemSpace),
              const HRoundedIcon(
                icon: Iconsax.add,
                backgroundColor: HColor.darkerGrey,
                width: 40,
                height: 40,
                color: HColor.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(HSize.md),
              backgroundColor: HColor.black,
              side: const BorderSide(color: HColor.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
