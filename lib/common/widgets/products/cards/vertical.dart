import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadow.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/common/widgets/icons/rounded_icon.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/text/brand_title_verified.dart';
import 'package:t_store/common/widgets/text/product_price.dart';
import 'package:t_store/common/widgets/text/product_title.dart';
import 'package:t_store/features/shop/screens/product_screen.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HProductCardVertical extends StatelessWidget {
  const HProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [HShadowStyle.verticalProductShadow],
          color: dark ? HColor.darkGrey : HColor.white,
        ),
        child: Column(
          children: [
            // Thumbnail
            HRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(HSize.sm),
              backgroundColor: dark ? HColor.darkGrey : HColor.light,
              child: Stack(
                children: [
                  const HRoundedImage(
                    image: HImage.productImage1,
                    applyImageRadius: true,
                  ),

                  // Sale Tag
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

                  // Love
                  Positioned(
                    top: 0,
                    right: 0,
                    child: HRoundedIcon(
                      // width: HSize.lg,
                      // height: HSize.lg,
                      size: HSize.lg,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      backgroundColor: dark ? HColor.white : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: HSize.itemSpace / 2),

            // Detail
            const Padding(
              padding: EdgeInsets.only(left: HSize.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HProductTitle(title: 'Green Nike Air Shoes'),
                  SizedBox(height: HSize.itemSpace / 2),
                  HBrandTitleVerified(title: 'Nike'),
                ],
              ),
            ),

            // Price
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: HSize.sm),
                  child: HProductPrice(price: '35.0'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: HColor.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(HSize.cardRadiusMd),
                      bottomRight: Radius.circular(HSize.productImageRadius),
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
    );
  }
}
