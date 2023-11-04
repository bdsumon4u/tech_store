import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/auth/screens/login_screen.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text.dart';
import 'package:t_store/utils/helper.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(HImage.staticSuccessIllustration),
                width: HelperH.screenWidth() * 0.6,
              ),
              const SizedBox(height: HSize.sectionSpace),

              // Title and SubTitle
              Text(
                HText.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: HSize.itemSpace),
              const SizedBox(height: HSize.itemSpace),
              Text(
                HText.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: HSize.sectionSpace),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(HText.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
