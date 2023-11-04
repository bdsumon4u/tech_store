import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/device.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.onLeadingTap,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? onLeadingTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HSize.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: _leadingButton(),
        title: title,
        actions: actions,
      ),
    );
  }

  Widget? _leadingButton() {
    if (showBackArrow) {
      return IconButton(
        onPressed: () => Get.back(),
        icon: Icon(leadingIcon ?? Iconsax.arrow_left),
      );
    }

    if (leadingIcon != null) {
      return IconButton(
        onPressed: onLeadingTap,
        icon: Icon(leadingIcon),
      );
    }

    return null;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(HDevice.getAppBarHeight());
}
