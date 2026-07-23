import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/appBar/appBar.dart';
import 'package:urbanoasis/common/listTitles/setting_menu_title.dart';
import 'package:urbanoasis/common/listTitles/user_profile_title.dart';
import 'package:urbanoasis/common/text/section_heading.dart';
import 'package:urbanoasis/featruers/shop/screen/home/widget/container/primay_header_container.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            OPrimaryHeaderContainer(
              child: Column(
                children: [
                  //App Bar
                  OAppBar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: OColors.white))),

                  //User Profile Card
                  const OUserProfileTitle(),
                  const SizedBox(height: OSizes.spaceBtwSections),
                ],
              ),
            ),

            //body
            Padding(
              padding: const EdgeInsets.all(OSizes.defaultSpaces),
              child: Column(
                children: [
                  //Account Settings
                  const OSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: OSizes.spaceBtwItems),

                  const OSettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'Address',
                      subTitle: 'Delivery to Address'),
                  const OSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, Remove products and move to checkout'),
                  const OSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In progress to completed orders'),
                  const OSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registred bank account'),
                  const OSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discount coupons'),
                  const OSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Any kind of notifications'),
                  const OSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage with connected account'),

                  //App Settings
                  const SizedBox(height: OSizes.spaceBtwSections),

                  const OSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: OSizes.spaceBtwItems),

                  const OSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'from firebase',
                  ),

                  OSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  OSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  OSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD image quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //Logout Button
                  const SizedBox(height: OSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: OSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
