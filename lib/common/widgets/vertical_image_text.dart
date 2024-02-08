import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class HVerticalImageText extends StatelessWidget {
  const HVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = HColor.white,
    this.backgroundColor = HColor.white,
    this.isNetworkImage = true,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: HSize.itemSpace),
        child: Column(
          children: [
            HRoundedImage(
              height: 56,
              width: 56,
              image: image,
              fit: BoxFit.fitWidth,
              isNetworkImage: isNetworkImage,
              backgroundColor: backgroundColor,
            ),
            const SizedBox(height: HSize.itemSpace / 2),
            SizedBox(
              width: 56,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
