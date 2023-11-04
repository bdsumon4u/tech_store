import 'package:flutter/material.dart';
import 'package:t_store/features/auth/controllers/onboarding_controller.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/device.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: HDevice.getAppBarHeight(),
      right: HSize.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
