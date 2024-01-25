import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/icons/rounded_icon.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/shapes/curved_edge.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';

class HProductImageSlider extends StatelessWidget {
  const HProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return HCurvedEdge(
      child: Container(
        color: dark ? HColor.darkerGrey : HColor.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(HSize.productImageRadius * 2),
                child: Image(image: AssetImage(HImage.productImage5)),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 5,
              right: 5,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => HRoundedImage(
                    backgroundColor: dark ? HColor.dark : HColor.light,
                    border: Border.all(color: HColor.primary),
                    padding: const EdgeInsets.all(HSize.sm),
                    image: HImage.productImage1,
                    width: 80,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: HSize.itemSpace,
                  ),
                ),
              ),
            ),
            const HAppBar(
              showBackArrow: true,
              actions: [
                HRoundedIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
