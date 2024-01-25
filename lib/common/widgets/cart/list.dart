import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/cart/item.dart';
import 'package:t_store/common/widgets/cart/quantity.dart';
import 'package:t_store/common/widgets/text/product_price.dart';
import 'package:t_store/utils/constants/size.dart';

class HCartList extends StatelessWidget {
  const HCartList({super.key, this.showButtons = true});

  final bool showButtons;

  Widget _itemBuilder() {
    return Column(
      children: [
        const HCartItem(),
        if (showButtons) const SizedBox(height: HSize.itemSpace),
        if (showButtons)
          const Row(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => _itemBuilder(),
      separatorBuilder: (_, __) => const SizedBox(height: HSize.sectionSpace),
      itemCount: 2,
    );
  }
}
