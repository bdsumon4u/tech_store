import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/products/cards/horizontal.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const HRoundedImage(
                image: HImage.promoBanner2,
                width: double.infinity,
                applyImageRadius: true,
              ),
              const SizedBox(height: HSize.sectionSpace),

              /// Categories
              Column(
                children: [
                  const HSectionHeading(title: 'Sports shirts'),
                  const SizedBox(height: HSize.itemSpace / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, __) => const HProductCardHorizontal(),
                      separatorBuilder: (_, __) => const SizedBox(
                        width: HSize.itemSpace,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
