import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/products/attributes.dart';
import 'package:t_store/common/widgets/products/bottom_add_to_cart.dart';
import 'package:t_store/common/widgets/products/image_slider.dart';
import 'package:t_store/common/widgets/products/meta_data.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: const HProductBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HProductImageSlider(dark: dark),
            Padding(
              padding: const EdgeInsets.only(
                left: HSize.defaultSpace,
                right: HSize.defaultSpace,
                bottom: HSize.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & Share
                  // Price, Title, Stock, & Brand
                  const HProductMetaData(),
                  // Attributes
                  const HProductAttributes(),
                  const SizedBox(height: HSize.sectionSpace),
                  // Checkout
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: HSize.sectionSpace),
                  // Description
                  const HSectionHeading(
                    title: 'Description',
                    showButton: false,
                  ),
                  const SizedBox(height: HSize.itemSpace),
                  const ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis diam vel leo ultricies ornare. Donec eget nunc eget odio ultricies aliquet. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec eget nunc eget odio ultricies aliquet. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget nisl. Donec eget nunc eget odio ultricies aliquet. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget nisl.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: HSize.sectionSpace),
                  // Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
