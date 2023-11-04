import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/constants/text.dart';
import 'package:t_store/utils/helper.dart';

class PrivacyTermsCheckbox extends StatelessWidget {
  const PrivacyTermsCheckbox({
    super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: HSize.itemSpace),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${HText.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: HText.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? HColor.white : HColor.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                    dark ? HColor.white : HColor.primary,
                  ),
                ),
                TextSpan(
                  text: ' ${HText.and} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: HText.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? HColor.white : HColor.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                    dark ? HColor.white : HColor.primary,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
