import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/icons/rounded_icon.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cards/vertical.dart';
import 'package:t_store/features/shop/screens/home_screen.dart';
import 'package:t_store/utils/constants/size.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          HRoundedIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(() => const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            children: [
              HGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const HProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
