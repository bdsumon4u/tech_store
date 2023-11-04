import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/common/widgets/vertical_image_text.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
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
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, item) {
                return const HVerticalImageText(
                  image: HImage.sportIcon,
                  title: 'Sport',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
