import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/common/widgets/text/brand_title_verified.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HBrandCard extends StatelessWidget {
  const HBrandCard({super.key, this.onTap, required this.showBorder});

  final VoidCallback? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: HRoundedContainer(
        padding: const EdgeInsets.all(HSize.xs),
        backgroundColor: Colors.transparent,
        showBorder: showBorder,
        child: Row(
          children: [
            Flexible(
              child: Container(
                width: 48,
                height: 48,
                padding: const EdgeInsets.all(HSize.xs),
                decoration: BoxDecoration(
                  color: dark ? HColor.black : HColor.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image(
                  image: const AssetImage(HImage.clothIcon),
                  color: dark ? HColor.white : HColor.black,
                ),
              ),
            ),
            const SizedBox(width: HSize.itemSpace / 4),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HBrandTitleVerified(
                    title: 'Nike',
                    size: TextSize.large,
                  ),
                  Text(
                    '256 products of this brand are available',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
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
