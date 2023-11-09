import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/device.dart';
import 'package:t_store/utils/helper.dart';

class HTabBar extends StatelessWidget implements PreferredSizeWidget {
  const HTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Material(
      color: dark ? HColor.black : HColor.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: HColor.primary,
        unselectedLabelColor: HColor.darkGrey,
        labelColor: dark ? HColor.white : HColor.primary,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(HDevice.getAppBarHeight());
}
