import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/utils/constants/size.dart';

class CheckoutAddress extends StatelessWidget {
  const CheckoutAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HSectionHeading(title: 'Address', showButton: false),
        const SizedBox(height: HSize.itemSpace / 1.5),
        Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: 'Full Name',
                  hintText: 'Enter your name',
                ),
              ),
              const SizedBox(height: HSize.inputFieldSpace),

              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number',
                ),
              ),
              const SizedBox(height: HSize.inputFieldSpace),

              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.building_31),
                  labelText: 'Street Address',
                  hintText: 'Enter your street address',
                ),
              ),
              const SizedBox(height: HSize.inputFieldSpace / 2),
            ],
          ),
        ),
      ],
    );
  }
}
