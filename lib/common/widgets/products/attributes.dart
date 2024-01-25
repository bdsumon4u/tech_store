import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/chips/choice_chip.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/common/widgets/text/product_price.dart';
import 'package:t_store/common/widgets/text/product_title.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HProductAttributes extends StatelessWidget {
  const HProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Column(
      children: [
        /// -- Selected Variation --
        HRoundedContainer(
          padding: const EdgeInsets.all(HSize.md),
          backgroundColor: dark ? HColor.darkerGrey : HColor.grey,
          child: Column(
            children: [
              /// Title, Price, & Stock
              Row(
                children: [
                  const HSectionHeading(title: 'Variation', showButton: false),
                  const SizedBox(width: HSize.itemSpace),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const HProductTitle(title: 'Price'),
                          const SizedBox(width: HSize.itemSpace),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: HSize.itemSpace),

                          /// Sale Price
                          const HProductPrice(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const HProductTitle(title: 'Stock'),
                          const SizedBox(width: HSize.itemSpace),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const HProductTitle(
                title:
                    'This is the description of the product and it can go up to max 4 lines.',
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: HSize.itemSpace),

        /// -- Attributes --
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HSectionHeading(title: 'Colors'),
            SizedBox(height: HSize.itemSpace / 2),
            Wrap(
              spacing: 8,
              children: [
                HChoiceChip(text: 'Green', selected: false),
                HChoiceChip(text: 'Blue', selected: true),
                HChoiceChip(text: 'Yellow', selected: false),
              ],
            ),
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HSectionHeading(title: 'Size'),
            SizedBox(height: HSize.itemSpace / 2),
            Wrap(
              spacing: 8,
              children: [
                HChoiceChip(text: 'XS', selected: true),
                HChoiceChip(text: 'SM', selected: false),
                HChoiceChip(text: 'MD', selected: false),
                HChoiceChip(text: 'LG', selected: false),
                HChoiceChip(text: 'XL', selected: false),
                HChoiceChip(text: 'XXL', selected: false),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
