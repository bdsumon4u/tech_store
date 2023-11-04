import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/cart/counter.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            HText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: HColor.grey),
          ),
          Text(
            HText.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: HColor.white),
          ),
        ],
      ),
      actions: [
        HCartCounter(onPressed: () {}, iconColor: HColor.white),
      ],
    );
  }
}
