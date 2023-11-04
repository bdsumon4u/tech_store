import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HSocial extends StatelessWidget {
  const HSocial({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? HColor.darkGrey : HColor.primary,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: HSize.iconMd,
              height: HSize.iconMd,
              image: AssetImage(HImage.google),
            ),
            color: dark ? HColor.dark : HColor.light,
          ),
        ),
        const SizedBox(width: HSize.itemSpace),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? HColor.darkGrey : HColor.primary,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: HSize.iconMd,
              height: HSize.iconMd,
              image: AssetImage(HImage.facebook),
            ),
            color: dark ? HColor.dark : HColor.light,
          ),
        ),
      ],
    );
  }
}
