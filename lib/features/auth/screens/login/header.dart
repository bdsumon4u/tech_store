import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text.dart';
import 'package:t_store/utils/helper.dart';

class HLoginHeader extends StatelessWidget {
  const HLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);
    final logo = dark ? HImage.lightAppLogo : HImage.darkAppLogo;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(logo),
        ),
        Text(
          HText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: HSize.sm),
        Text(
          HText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
