import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/text/brand_title_verified.dart';
import 'package:t_store/common/widgets/text/product_title.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Row(
      children: [
        /// Image
        HRoundedImage(
          image: HImage.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(HSize.sm),
          backgroundColor: dark ? HColor.darkerGrey : HColor.light,
        ),
        const SizedBox(width: HSize.itemSpace),

        /// Title, Price, & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HBrandTitleVerified(title: 'Nike'),
              const Flexible(
                child: HProductTitle(
                  title: 'Black Sports Shoes',
                  maxLines: 1,
                ),
              ),

              /// Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'XS ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
