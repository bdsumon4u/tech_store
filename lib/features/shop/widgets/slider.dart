import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:t_store/common/widgets/containers/circular_container.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/features/shop/controllers/slider_controller.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';

class HPromoSlider extends StatelessWidget {
  const HPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SliderController());

    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (url) => HCircularContainer(
                  height: 200,
                  width: double.infinity,
                  backgroundColor: HColor.light,
                  child: HRoundedImage(
                    image: url,
                    radius: HSize.sm,
                    isNetworkImage: false,
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(height: HSize.itemSpace),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  HCircularContainer(
                    height: 4,
                    width: 20,
                    margin: const EdgeInsets.only(right: HSize.itemSpace),
                    backgroundColor: controller.currentPageIndex.value == i
                        ? HColor.primary
                        : HColor.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
