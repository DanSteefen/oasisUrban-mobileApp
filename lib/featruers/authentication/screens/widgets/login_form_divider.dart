import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/texts.dart';

class OLoginFormDivider extends StatelessWidget {
  const OLoginFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? OColors.darkerGrey : OColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(OTexts.orSignUpWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? OColors.darkerGrey : OColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}