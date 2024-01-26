import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/profile_tile.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/features/account/widgets/tiles/settings_menu.dart';
import 'package:t_store/features/shop/screens/order_screen.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HPrimaryHeaderContainer(
              child: Column(
                children: [
                  HAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: HColor.white),
                    ),
                  ),
                  const HProfileTile(),
                  const SizedBox(height: HSize.sectionSpace),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(HSize.defaultSpace),
              child: Column(
                children: [
                  const HSectionHeading(
                    title: 'Account Settings',
                    showButton: false,
                  ),
                  const SizedBox(height: HSize.itemSpace),
                  const HSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'Addresses',
                    subTitle: 'Set shipping addresses',
                  ),
                  const HSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'Cart',
                    subTitle: 'Add, remove products and move to checkout',
                  ),
                  HSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'Orders',
                    subTitle: 'In-progress and Completed orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const HSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank',
                    subTitle: 'Withdraw balance to registered bank accounts',
                  ),
                  const HSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'Coupons',
                    subTitle: 'List of all the discount coupons',
                  ),
                  const HSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kin of notification messages',
                  ),
                  const HSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Privacy',
                    subTitle: 'Manage data usages and connected accounts',
                  ),
                  const SizedBox(height: HSize.sectionSpace),
                  const HSectionHeading(
                    title: 'App Settings',
                    showButton: false,
                  ),
                  const SizedBox(height: HSize.itemSpace),
                  const HSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                  ),
                  HSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  HSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  HSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Image quality to be seen',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  const SizedBox(height: HSize.sectionSpace),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: HSize.sectionSpace * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
