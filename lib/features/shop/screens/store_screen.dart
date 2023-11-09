import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/brands/card.dart';
import 'package:t_store/common/widgets/cart/counter.dart';
import 'package:t_store/common/widgets/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/sections/section_heading.dart';
import 'package:t_store/common/widgets/tabbar.dart';
import 'package:t_store/features/shop/screens/store/category_tab.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/constants/size.dart';
import 'package:t_store/utils/helper.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperH.isDarkMode(context);

    final List<String> tabs = [
      'Sports',
      'Furniture',
      'Electronics',
      'Clothes',
      'Cosmetics',
    ];

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: HAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            HCartCounter(onPressed: () {}, iconColor: HColor.primary),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              automaticallyImplyLeading: false,
              backgroundColor: dark ? HColor.black : HColor.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(HSize.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: HSize.itemSpace),
                    const HSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: HSize.sectionSpace),
                    HSectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: HSize.itemSpace / 1.5),
                    HGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (context, index) {
                        return const HBrandCard(showBorder: true);
                      },
                    ),
                  ],
                ),
              ),
              bottom: HTabBar(
                tabs: tabs.map((tab) => Tab(text: tab)).toList(),
              ),
            ),
          ],
          body: TabBarView(
            children: tabs.map((e) => const HCategoryTab()).toList(),
          ),
        ),
      ),
    );
  }
}
