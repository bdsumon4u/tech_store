import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/auth/screens/register/form.dart';
import 'package:t_store/features/auth/widgets/divider.dart';
import 'package:t_store/features/auth/widgets/social.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                HText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: HSize.sectionSpace),

              // Form
              const HSignupForm(),
              const SizedBox(height: HSize.sectionSpace),

              // Divider
              HDivider(text: HText.orSignUpWith.capitalize!),

              const SizedBox(height: HSize.sectionSpace),

              // Social
              const HSocial(),
            ],
          ),
        ),
      ),
    );
  }
}
