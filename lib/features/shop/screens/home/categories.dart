import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/shimmers/category.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/common/widgets/vertical_image_text.dart';
import 'package:t_store/features/shop/controllers/category_controller.dart';
import 'package:t_store/features/shop/models/category.dart';
import 'package:t_store/features/shop/screens/category_screen.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());

    return Obx(() {
      if (controller.isLoading.value) {
        return const HCategoryShimmer();
      }

      return Padding(
        padding: const EdgeInsets.only(left: HSize.defaultSpace),
        child: Column(
          children: [
            const HSectionHeading(
              title: 'Popular Categories',
              showButton: false,
              color: HColor.white,
            ),
            const SizedBox(height: HSize.itemSpace),
            SizedBox(
              height: 80,
              child: ListView.builder(
                // itemCount: controller.categories.length,
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, item) {
                  // final CategoryModel category = controller.categories[item];
                  return HVerticalImageText(
                    // image: category.icon,
                    // title: category.name,
                    title: 'Category $item',
                    image: HImage.acerlogo,
                    isNetworkImage: false,
                    onTap: () => Get.to(() => const CategoryScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
