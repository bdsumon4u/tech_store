import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cards/vertical.dart';
import 'package:t_store/utils/constants/size.dart';

class HSortableProducts extends StatelessWidget {
  const HSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(height: HSize.sectionSpace),

        /// Products
        HGridLayout(
          itemCount: 4,
          itemBuilder: (_, index) => const HProductCardVertical(),
        ),
      ],
    );
  }
}
