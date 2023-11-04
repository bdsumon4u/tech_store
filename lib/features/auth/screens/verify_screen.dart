import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_store/features/auth/screens/login_screen.dart';
import 'package:t_store/features/auth/screens/success_screen.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text.dart';
import 'package:t_store/utils/helper.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(HImage.deliveredEmailIllustration),
                width: HelperH.screenWidth() * 0.6,
              ),
              const SizedBox(height: HSize.sectionSpace),

              // Title and SubTitle
              Text(
                HText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: HSize.itemSpace),
              Text(
                'customer@hotash.tech',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: HSize.itemSpace),
              Text(
                HText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: HSize.sectionSpace),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const SuccessScreen()),
                  child: const Text(HText.tContinue),
                ),
              ),
              const SizedBox(height: HSize.itemSpace),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(HText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
