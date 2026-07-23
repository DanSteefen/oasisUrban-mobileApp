import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanoasis/common/roundedImageWidget/rounded_image_widget.dart';
import 'package:urbanoasis/featruers/shop/controllers/home_controller.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/container/circular_container.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class OPromoSlider extends StatelessWidget {
  const OPromoSlider({
    super.key,
    required this.baner,
  });

  final List<String> baner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updateCarousalIndex(index)),
          items: baner.map((url) => ORoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: OSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < baner.length; i++)
                  OCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? OColors.primary
                        : OColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
