import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/cart/quantity.dart';
import 'package:t_store/common/widgets/text/product_price.dart';
import 'package:t_store/features/shop/screens/cart/item.dart';
import 'package:t_store/utils/constants/size.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(HSize.defaultSpace),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, index) => const Column(
                  children: [
                    CartItem(),
                    SizedBox(height: HSize.itemSpace),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            /// Extra Space
                            SizedBox(width: 70),

                            /// Add & Remove
                            HCartQuantity(),
                          ],
                        ),
                        HProductPrice(price: '256'),
                      ],
                    ),
                  ],
                ),
            separatorBuilder: (_, __) =>
                const SizedBox(height: HSize.sectionSpace),
            itemCount: 10),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(HSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
