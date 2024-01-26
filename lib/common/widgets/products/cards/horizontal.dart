import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/common/widgets/icons/rounded_icon.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/text/brand_title_verified.dart';
import 'package:t_store/common/widgets/text/product_price.dart';
import 'package:t_store/common/widgets/text/product_title.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HProductCardHorizontal extends StatelessWidget {
  const HProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: dark ? HColor.darkGrey : HColor.softGrey,
      ),
      child: Row(children: [
        /// Thumbnail, Wishlist, Discount
        HRoundedContainer(
          height: 120,
          padding: const EdgeInsets.all(HSize.sm),
          backgroundColor: dark ? HColor.dark : HColor.light,
          child: Stack(
            children: [
              /// Thumbnail
              const SizedBox(
                height: 120,
                width: 120,
                child: HRoundedImage(
                  image: HImage.productImage1,
                  applyImageRadius: true,
                ),
              ),

              /// Sale Badge
              Positioned(
                top: 12,
                child: HRoundedContainer(
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
              ),

              /// Wishlist
              const Positioned(
                top: 0,
                right: 0,
                child: HRoundedIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),

        /// Details
        SizedBox(
          width: 172,
          child: Padding(
            padding: const EdgeInsets.only(top: HSize.sm, left: HSize.sm),
            child: Column(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HProductTitle(
                      title: 'Green Nike Half-Sleeve Shirt',
                      maxLines: 2,
                    ),
                    SizedBox(height: HSize.itemSpace / 2),
                    HBrandTitleVerified(title: 'Nike'),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Price
                    const Flexible(child: HProductPrice(price: '256.0')),

                    /// Add to Cart
                    Container(
                      decoration: const BoxDecoration(
                        color: HColor.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(HSize.cardRadiusMd),
                          bottomRight:
                              Radius.circular(HSize.productImageRadius),
                        ),
                      ),
                      child: const SizedBox(
                        width: HSize.iconLg,
                        height: HSize.iconLg,
                        child: Center(
                          child: Icon(
                            Iconsax.add,
                            color: HColor.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
