import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar.dart';
import 'package:t_store/common/widgets/brands/card.dart';
import 'package:t_store/common/widgets/products/sortable.dart';
import 'package:t_store/utils/constants/size.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(HSize.defaultSpace),
          child: Column(
            children: [
              HBrandCard(showBorder: true),
              SizedBox(height: HSize.sectionSpace),

              HSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
