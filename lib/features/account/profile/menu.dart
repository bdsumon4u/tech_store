import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/size.dart';

class HProfileMenu extends StatelessWidget {
  const HProfileMenu({
    super.key,
    required this.onTap,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: HSize.itemSpace / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: Icon(icon, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}
