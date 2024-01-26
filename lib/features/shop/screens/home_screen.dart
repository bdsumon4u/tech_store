import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cards/vertical.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/features/shop/screens/home/appbar.dart';
import 'package:t_store/features/shop/screens/home/categories.dart';
import 'package:t_store/features/shop/screens/products_screen.dart';
import 'package:t_store/features/shop/widgets/slider.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HPrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: HSize.sectionSpace),
                  HSearchContainer(text: 'Search in Store'),
                  SizedBox(height: HSize.sectionSpace),
                  HomeCategories(),
                  SizedBox(height: HSize.sectionSpace),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(HSize.defaultSpace),
              child: Column(
                children: [
                  const HPromoSlider(
                    banners: [
                      HImage.promoBanner1,
                      HImage.promoBanner2,
                      HImage.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: HSize.sectionSpace),
                  HSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const ProductsScreen())),
                  const SizedBox(height: HSize.itemSpace),
                  HGridLayout(
                    itemCount: 4,
                    itemBuilder: (context, index) =>
                        const HProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
