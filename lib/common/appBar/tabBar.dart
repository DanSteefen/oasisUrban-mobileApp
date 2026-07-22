import 'package:flutter/material.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/device/device_utility.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

class OTabBar extends StatelessWidget implements PreferredSizeWidget {
  const OTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = OHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? OColors.black : OColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: OColors.primary,
        unselectedLabelColor: OColors.darkGrey,
        labelColor: dark ? OColors.white : OColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ODeviceUtils.getAppBarHeight());
}
