import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:t_store/features/auth/controllers/onboarding_controller.dart';
import 'package:t_store/features/auth/screens/onboarding/nav.dart';
import 'package:t_store/features/auth/screens/onboarding/next.dart';
import 'package:t_store/features/auth/screens/onboarding/page.dart';
import 'package:t_store/features/auth/screens/onboarding/skip.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: HImage.onBoardingImage1,
                title: HText.onBoardingTitle1,
                subTitle: HText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: HImage.onBoardingImage2,
                title: HText.onBoardingTitle2,
                subTitle: HText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: HImage.onBoardingImage3,
                title: HText.onBoardingTitle3,
                subTitle: HText.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingNav(),

          // Next Button
          const OnBoardingNext(),
        ],
      ),
    );
  }
}
