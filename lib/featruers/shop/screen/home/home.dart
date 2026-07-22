import 'package:flutter/material.dart';
import 'package:urbanoasis/common/layout/grid_layout.dart';
import 'package:urbanoasis/common/product/product_card_vertical.dart';
import 'package:urbanoasis/common/text/section_heading.dart';

import 'package:urbanoasis/featruers/shop/screen/home/widget/container/search_container.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/container/primay_header_container.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/home_app_bar.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/home_categories_list.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/promo_slider.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const OPrimaryHeaderContainer(
              child: Column(
                children: [
                  //App Bar
                  OHomeAppBar(),
                  SizedBox(height: OSizes.spaceBtwSections),

                  //Search Bar
                  OSearchContainer(text: "Search for products"),
                  SizedBox(height: OSizes.spaceBtwSections),

                  //Category Heading
                  Padding(
                    padding: EdgeInsets.only(left: OSizes.defaultSpaces),
                    child: Column(
                      children: [
                        OSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: OColors.white),
                        SizedBox(height: OSizes.spaceBtwItems),

                        //Categories
                        OHomeCategoriesList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Banner Body
            const Padding(
              padding: EdgeInsets.all(OSizes.defaultSpaces),
              child: OPromoSlider(
                baner: [
                  OImages.promoBanner1,
                  OImages.promoBanner2,
                  OImages.promoBanner3
                ],
              ),
            ),
            const SizedBox(height: OSizes.spaceBtwSections),

            //Product Card
            OGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const OProductCardVertical()),
          ],
        ),
      ),
    );
  }
}
