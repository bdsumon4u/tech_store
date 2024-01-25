import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/text/brand_title_verified.dart';
import 'package:t_store/common/widgets/text/product_price.dart';
import 'package:t_store/common/widgets/text/product_title.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';

class HProductMetaData extends StatelessWidget {
  const HProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            HRoundedContainer(
              radius: HSize.sm,
              backgroundColor: HColor.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: HSize.sm,
                vertical: HSize.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: HColor.black),
              ),
            ),
            const SizedBox(width: HSize.itemSpace),

            /// Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: HSize.itemSpace),
            const HProductPrice(price: '175', large: true),
          ],
        ),
        const SizedBox(height: HSize.itemSpace / 1.5),

        /// Title
        const HProductTitle(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: HSize.itemSpace / 1.5),

        /// Stock
        Row(
          children: [
            const HProductTitle(title: 'Status'),
            const SizedBox(width: HSize.itemSpace),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: HSize.itemSpace / 1.5),

        /// Brand
        const Row(
          children: [
            HRoundedImage(image: HImage.shoeIcon, height: 32, width: 32),
            SizedBox(width: HSize.itemSpace / 2),
            HBrandTitleVerified(title: 'Nike', size: TextSize.medium),
          ],
        ),
        const SizedBox(height: HSize.itemSpace / 2),
      ],
    );
  }
}
