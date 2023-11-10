import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/features/account/profile/menu.dart';
import 'package:t_store/utils/constants/image.dart';
import 'package:t_store/utils/constants/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const HRoundedImage(
                      image: HImage.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              const SizedBox(height: HSize.itemSpace / 2),
              const Divider(),
              const SizedBox(height: HSize.itemSpace),
              const HSectionHeading(
                title: 'Profile Information',
                showButton: false,
              ),
              const SizedBox(height: HSize.itemSpace),
              HProfileMenu(onTap: () {}, title: 'Name', value: 'Hotash Ahmed'),
              HProfileMenu(onTap: () {}, title: 'Username', value: 'hotash'),
              const SizedBox(height: HSize.itemSpace),
              const Divider(),
              const SizedBox(height: HSize.itemSpace),
              const HSectionHeading(
                title: 'Personal Information',
                showButton: false,
              ),
              const SizedBox(height: HSize.itemSpace),
              HProfileMenu(
                onTap: () {},
                title: 'User ID',
                value: '44444',
                icon: Iconsax.copy,
              ),
              HProfileMenu(
                onTap: () {},
                title: 'Email',
                value: 'support@hotash.tech',
              ),
              HProfileMenu(
                onTap: () {},
                title: 'Phone',
                value: '+8801xxxxxxxxx',
              ),
              HProfileMenu(onTap: () {}, title: 'Gender', value: 'Male'),
              HProfileMenu(
                onTap: () {},
                title: 'Date of Birth',
                value: '27-Apr-2000',
              ),
              const Divider(),
              const SizedBox(height: HSize.itemSpace),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
