import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/auth/controllers/onboarding_controller.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/device.dart';
import 'package:t_store/utils/helper.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Positioned(
      right: HSize.defaultSpace,
      bottom: HDevice.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          backgroundColor: dark ? HColor.primary : HColor.dark,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
