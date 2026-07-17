import 'package:flutter/material.dart';
import 'package:urbanoasis/common/imageTextWidget/image_text_widget.dart';
import 'package:urbanoasis/common/text/section_heading.dart';

import 'package:urbanoasis/featruers/shop/screen/home/widget/container/search_container.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/container/primay_header_container.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/home_app_bar.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/home_categories_list.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            OPrimaryHeaderContainer(
              child: Column(
                children: [
                  //App Bar
                  OHomeAppBar(),
                  SizedBox(height: OSizes.spaceBtwSections),

                  //Search Bar
                  OSearchContainer(text: "Search for products"),
                  SizedBox(height: OSizes.spaceBtwSections),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: OSizes.defaultSpaces),
                    child: Column(
                      children: [
                        OSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: OColors.white),
                        SizedBox(height: OSizes.spaceBtwItems),

                        //Categories List
                        OHomeCategoriesList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
