import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:t_store/features/auth/screens/login/form.dart';
import 'package:t_store/features/auth/screens/login/header.dart';
import 'package:t_store/features/auth/widgets/social.dart';
import 'package:t_store/features/auth/widgets/divider.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: HSize.appBarHeight,
          right: HSize.defaultSpace,
          bottom: HSize.defaultSpace,
          left: HSize.defaultSpace,
        ),
        child: Column(
          children: [
            // Logo, Title, SubTitle
            const HLoginHeader(),

            // Form
            const HLoginForm(),

            // Divider
            HDivider(text: HText.orSignInWith.capitalize!),

            const SizedBox(height: HSize.sectionSpace),

            // Social
            const HSocial(),
          ],
        ),
      ),
    ));
  }
}
