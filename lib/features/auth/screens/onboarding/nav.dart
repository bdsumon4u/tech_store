import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/features/auth/controllers/onboarding_controller.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/device.dart';
import 'package:t_store/utils/helper.dart';

class OnBoardingNav extends StatelessWidget {
  const OnBoardingNav({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      left: HSize.defaultSpace,
      bottom: HDevice.getBottomNavigationBarHeight() + 25.0,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? HColor.primary : HColor.dark,
          dotHeight: 6.0,
        ),
      ),
    );
  }
}
