import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/auth/screens/recovery_screen.dart';
import 'package:t_store/features/auth/screens/register_screen.dart';
import 'package:t_store/features/tabbar.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text.dart';

class HLoginForm extends StatelessWidget {
  const HLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
        const EdgeInsets.symmetric(vertical: HSize.sectionSpace),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: HText.email,
              ),
            ),
            const SizedBox(height: HSize.inputFieldSpace),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: HText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: HSize.inputFieldSpace / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(HText.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const RecoveryScreen()),
                  child: const Text(HText.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: HSize.sectionSpace),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const HTabBar()),
                child: const Text(HText.signIn),
              ),
            ),
            const SizedBox(height: HSize.itemSpace),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const RegisterScreen()),
                child: const Text(HText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
