import 'package:flutter/material.dart';
import 'package:urbanoasis/common/imageTextWidget/image_text_widget.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';

class OHomeCategoriesList extends StatelessWidget {
  const OHomeCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          OVerticalImageText(
              image: OImages.shoeIcon, title: "Shoes", onTap: () {});
        },
      ),
    );
  }
}
