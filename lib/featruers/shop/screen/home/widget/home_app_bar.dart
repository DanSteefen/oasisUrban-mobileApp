import 'package:flutter/material.dart';

import '../../../../../common/appBar/appBar.dart';
import '../../../../../common/ProductCart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';

class OHomeAppBar extends StatelessWidget {
  const OHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OAppBar(
          title: Column(
            children: [
              Text(OTexts.homeAppbarTittle, style: Theme.of(context).textTheme.labelMedium!.apply(color: OColors.grey)),
              Text(OTexts.homeAppbarSubTittle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: OColors.white)),
            ],
          ),
          actions: [
            OCartCounterIcon(onPressed: () {}, iconColor: OColors.white,),
          ],
        ),
      ],
    );
  }
}
