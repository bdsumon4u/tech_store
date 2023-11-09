import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/showcase.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cards/vertical.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';

class HCategoryTab extends StatelessWidget {
  const HCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            children: [
              const HBrandShowcase(images: [
                HImage.productImage1,
                HImage.productImage2,
                HImage.productImage3,
              ]),
              const HBrandShowcase(images: [
                HImage.productImage75,
                HImage.productImage76,
                HImage.productImage77,
              ]),
              const SizedBox(height: HSize.itemSpace),
              HSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: HSize.itemSpace),
              HGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const HProductCardVertical(),
              ),
              const SizedBox(height: HSize.sectionSpace),
            ],
          ),
        ),
      ],
    );
  }
}
