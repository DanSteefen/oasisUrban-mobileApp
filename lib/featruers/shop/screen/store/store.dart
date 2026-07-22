import 'package:flutter/material.dart';
import 'package:urbanoasis/common/ProductCart/cart_menu_icon.dart';
import 'package:urbanoasis/common/appBar/appBar.dart';
import 'package:urbanoasis/common/appBar/tabBar.dart';
import 'package:urbanoasis/common/brand/o_brand_card.dart';
import 'package:urbanoasis/common/layout/grid_layout.dart';
import 'package:urbanoasis/common/text/section_heading.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/container/search_container.dart';
import 'package:urbanoasis/featruers/shop/screen/store/widget/category_tab.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: OAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            OCartCounterIcon(
              onPressed: () {},
              iconColor: OColors.white,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: OHelperFunctions.isDarkMode(context)
                      ? OColors.black
                      : OColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(OSizes.defaultSpaces),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //Search Bar
                        const SizedBox(height: OSizes.spaceBtwItems),
                        const OSearchContainer(
                            text: 'Search in Store',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero),
                        const SizedBox(height: OSizes.spaceBtwSections),

                        //Featured Brands
                        const OSectionHeading(title: 'Featured Brands'),
                        const SizedBox(height: OSizes.spaceBtwItems / 1.5),

                        OGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const OBrandCard(showBorder: false);
                            })
                      ],
                    ),
                  ),
                  //Tabs
                  bottom: const OTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Cloths')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  ),
                ),
              ];
            },

            //Body
            body: const TabBarView(
              children: [
                OCategoryTab(),
                OCategoryTab(),
                OCategoryTab(),
                OCategoryTab(),
                OCategoryTab(),
              ],
            )),
      ),
    );
  }
}
