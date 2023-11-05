import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/size.dart';

class HRoundedImage extends StatelessWidget {
  const HRoundedImage({
    super.key,
    this.height,
    this.width,
    this.border,
    this.padding,
    required this.image,
    this.radius = HSize.sm,
    this.applyImageRadius = true,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.onTap,
  });

  final double? height, width;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final String image;
  final double radius;
  final bool applyImageRadius;
  final Color? backgroundColor;
  final BoxFit fit;
  final bool isNetworkImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(radius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
