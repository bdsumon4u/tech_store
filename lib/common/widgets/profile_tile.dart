import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/image.dart';

class HProfileTile extends StatelessWidget {
  const HProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const HRoundedImage(
        image: HImage.user,
        width: 50,
        height: 50,
      ),
      title: Text(
        'Tech STORE',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: HColor.white),
      ),
      subtitle: Text(
        'store@hotash.tech',
        style:
        Theme.of(context).textTheme.bodyMedium!.apply(color: HColor.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit, color: HColor.white),
      ),
    );
  }
}
