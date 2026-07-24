import 'package:flutter/material.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/container/circular_container.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OChoiseChip extends StatelessWidget {
  const OChoiseChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = OHelperFunctions.getColor(text) != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? OColors.white : null),
        avatar: isColor
            ? OCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: OHelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: OHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        // ignore: prefer_null_aware_operators
        backgroundColor: isColor ? OHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
