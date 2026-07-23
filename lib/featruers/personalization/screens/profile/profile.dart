import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/appBar/appBar.dart';
import 'package:urbanoasis/common/roundedImageWidget/o_circular_image.dart';
import 'package:urbanoasis/common/text/section_heading.dart';
import 'package:urbanoasis/featruers/personalization/screens/profile/widget/profile_menu.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';
import 'package:urbanoasis/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(OSizes.defaultSpaces),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const OCircularImage(
                        image: OImages.user, width: 80, height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change profile picture')),
                  ],
                ),
              ),

              //Details
              const SizedBox(height: OSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: OSizes.spaceBtwItems),

              //Heading Profile Info
              const OSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: OSizes.spaceBtwItems),

              ProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Danindu Gunasekara',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'User Name',
                value: 'danindugunasekara@gmail.com',
              ),

              const SizedBox(height: OSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: OSizes.spaceBtwItems),

              //Heading Personal Info
              const OSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: OSizes.spaceBtwItems),

              ProfileMenu(
                onPressed: () {},
                title: 'User Id',
                value: '4541',
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Email',
                value: 'danindugunasekara@gmail.com',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Phome Number',
                value: '071-9747315',
                icon: Iconsax.edit,
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '18 Sep 1997',
              ),

              const Divider(),
              const SizedBox(height: OSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account',
                      style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
