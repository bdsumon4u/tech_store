import 'package:flutter/material.dart';
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
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
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
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(HSize.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? HColor.black : HColor.white),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? HColor.light : HColor.dark,
                ),
              ),
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
