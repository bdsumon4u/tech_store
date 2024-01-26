import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  Widget _itemBuilder(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    return HRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(HSize.md),
      backgroundColor: dark ? HColor.dark : HColor.light,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Row-1
          Row(
            children: [
              const Icon(Iconsax.ship),
              const SizedBox(width: HSize.itemSpace / 2),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: HColor.primary, fontWeightDelta: 1),
                    ),
                    Text(
                      '07-Nov-2024',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.arrow_right_34,
                  size: HSize.iconSm,
                ),
              ),
            ],
          ),
          const SizedBox(height: HSize.itemSpace),

          /// Row-2
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.ship),
                    const SizedBox(width: HSize.itemSpace / 2),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            '[#3242]',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: HSize.itemSpace / 2),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shipping Date',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            '02-Feb-2024',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(HSize.defaultSpace),
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (_, __) => const SizedBox(height: HSize.itemSpace),
          itemBuilder: (context, index) => _itemBuilder(context),
        ),
      ),
    );
  }
}
