import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:urbanoasis/common/roundedImageWidget/o_circular_image.dart';
import 'package:urbanoasis/utils/constants/colors.dart';
import 'package:urbanoasis/utils/constants/image_strings.dart';

class OUserProfileTitle extends StatelessWidget {
  const OUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const OCircularImage(
        image: OImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'OASIS URBAN',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: OColors.white),
      ),
      subtitle: Text(
        'danindugunasekara@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: OColors.white),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.edit, color: OColors.white)),
    );
  }
}
