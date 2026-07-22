import 'package:flutter/material.dart';
import 'package:urbanoasis/common/ProductCart/cart_menu_icon.dart';
import 'package:urbanoasis/common/appBar/appBar.dart';
import 'package:urbanoasis/common/layout/grid_layout.dart';
import 'package:urbanoasis/common/roundedContainer/rounded_container.dart';
import 'package:urbanoasis/common/roundedImageWidget/o_circular_image.dart';
import 'package:urbanoasis/common/text/o_brand_title_text_with_verified_icon.dart';
import 'package:urbanoasis/common/text/section_heading.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/container/search_container.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/enums.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
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
                          return GestureDetector(
                            onTap: () {},
                            child: ORoundedContainer(
                              padding: const EdgeInsets.all(OSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  //Icon
                                  Flexible(
                                    child: OCircularImage(
                                      isNetworImage: false,
                                      image: OImages.clothIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor:
                                          OHelperFunctions.isDarkMode(context)
                                              ? OColors.white
                                              : OColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                      width: OSizes.spaceBtwItems / 2),

                                  //Text
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const OBrandTitleWithVerifiedIcon(
                                            title: 'Nike',
                                            brandTextSize: TextSizes.large),
                                        Text(
                                          '200 Products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
