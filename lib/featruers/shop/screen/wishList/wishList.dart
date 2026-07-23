import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/appBar/appBar.dart';
import 'package:urbanoasis/common/icon/o_circular_icon.dart';
import 'package:urbanoasis/common/layout/grid_layout.dart';
import 'package:urbanoasis/common/product/product_card_vertical.dart';
import 'package:urbanoasis/featruers/shop/screen/home/home.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        title: Text('Wish List',
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          OCircularIcon(
              icon: Iconsax.add, onPresseed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(OSizes.defaultSpaces),
          child: Column(
            children: [
              OGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const OProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
