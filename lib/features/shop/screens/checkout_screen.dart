import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/cart/list.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/features/shop/screens/checkout/address.dart';
import 'package:t_store/features/shop/screens/checkout/summary.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return Scaffold(
      appBar: HAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const HCartList(showButtons: false),
              const SizedBox(height: HSize.sectionSpace),

              /// Coupon Code

              /// Billing
              HRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(HSize.md),
                backgroundColor: dark ? HColor.black : HColor.white,
                child: const Column(
                  children: [
                    /// Summary
                    CheckoutSummary(),
                    SizedBox(height: HSize.itemSpace),

                    /// Divider
                    Divider(),
                    SizedBox(height: HSize.itemSpace),

                    /// Payment

                    /// Address
                    CheckoutAddress(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(HSize.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Place Order \$316.0'),
        ),
      ),
    );
  }
}
