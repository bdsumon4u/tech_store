import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/auth/screens/register/checkbox.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text.dart';

class HSignupForm extends StatelessWidget {
  const HSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: HText.firstName,
                  ),
                ),
              ),
              const SizedBox(width: HSize.inputFieldSpace),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: HText.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: HSize.inputFieldSpace),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: HText.email,
            ),
          ),
          const SizedBox(height: HSize.inputFieldSpace),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: HText.phoneNo,
            ),
          ),
          const SizedBox(height: HSize.inputFieldSpace),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: HText.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: HSize.sectionSpace),
          const PrivacyTermsCheckbox(),
          const SizedBox(height: HSize.sectionSpace),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(HText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
