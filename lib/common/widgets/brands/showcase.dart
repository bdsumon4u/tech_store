import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/card.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HBrandShowcase extends StatelessWidget {
  const HBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return HRoundedContainer(
      showBorder: true,
      borderColor: HColor.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: HSize.itemSpace),
      padding: const EdgeInsets.all(HSize.sm),
      child: Column(
        children: [
          const HBrandCard(showBorder: false),
          Row(
            children:
                images.map((image) => brandTopProduct(image, context)).toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProduct(String image, context) {
    final dark = HelperH.isDarkMode(context);

    return Expanded(
      child: HRoundedContainer(
        height: 100,
        backgroundColor: dark ? HColor.darkerGrey : HColor.light,
        margin: const EdgeInsets.only(right: HSize.sm),
        padding: const EdgeInsets.all(HSize.sm),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
