import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/containers/search_container.dart';
import 'package:t_store/features/shop/screens/home/appbar.dart';
import 'package:t_store/utils/constants/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HPrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: HSize.sectionSpace),
                  HSearchContainer(text: 'Search in Store'),
                  SizedBox(height: HSize.sectionSpace),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
