import 'package:flutter/material.dart';
import 'package:t_store/common/shimmers/shimmer.dart';
import 'package:t_store/utils/constants/size.dart';

class HCategoryShimmer extends StatelessWidget {
  const HCategoryShimmer({super.key, this.itemCount = 8});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: HSize.itemSpace),
        itemBuilder: (_, item) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HShimmerEffect(width: 55, height: 55, radius: 5),
              SizedBox(height: HSize.itemSpace / 2),
              HShimmerEffect(width: 55, height: 8),
            ],
          );
        },
      ),
    );
  }
}
