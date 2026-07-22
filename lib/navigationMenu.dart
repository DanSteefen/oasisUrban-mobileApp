import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/featruers/shop/screen/profile/profile.dart';
import 'package:urbanoasis/featruers/shop/screen/store/store.dart';
import 'package:urbanoasis/featruers/shop/screen/wishList/wishList.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/helpers/helper_functions.dart';

import 'featruers/shop/screen/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = OHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? OColors.black : Colors.white,
          indicatorColor: darkMode
              ? OColors.white.withOpacity(0.1)
              : OColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const ProfileScreen()
  ];
}
