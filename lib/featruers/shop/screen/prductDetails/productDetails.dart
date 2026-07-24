import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:read_more_text_url/read_more_text_url.dart';
import 'package:urbanoasis/common/text/section_heading.dart';
import 'package:urbanoasis/featruers/shop/screen/prductDetails/widget/bottom_add_to_cart.dart';
import 'package:urbanoasis/featruers/shop/screen/prductDetails/widget/product_attributes.dart';
import 'package:urbanoasis/featruers/shop/screen/prductDetails/widget/product_image_details_slider.dart';
import 'package:urbanoasis/featruers/shop/screen/prductDetails/widget/product_meta_data.dart';
import 'package:urbanoasis/featruers/shop/screen/prductDetails/widget/rating_and_shate.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: OBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            const OProductImageSlider(),

            //Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: OSizes.defaultSpaces,
                  left: OSizes.defaultSpaces,
                  bottom: OSizes.defaultSpaces),
              child: Column(
                children: [
                  //Rating & Share Button
                  const ORatingAndShare(),

                  //Price, Title, Stack, Brand
                  const OProductMetaData(),

                  //Attributes
                  const OProductAttributes(),
                  const SizedBox(height: OSizes.spaceBtwSections),

                  //Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: OSizes.spaceBtwSections),

                  //Description
                  const OSectionHeading(title: 'Description'),
                  const SizedBox(height: OSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Nike shoes combine top-tier athletic performance, everyday comfort, and iconic street style using lightweight mesh, responsive air cushioning, and durable rubber grips.',
                    trimLines: 2,
                    trimMode: TrimMode.line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    style: TextStyle(fontSize: 14),
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: OSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const OSectionHeading(
                          title: 'Reviews 200', showActionButton: false),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.arrow_right3, size: 18)),
                    ],
                  ),
                  const SizedBox(height: OSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
