
import 'package:e_commerce_pro/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTitle extends StatelessWidget {
  const TUserProfileTitle({
    super.key, this.onPressed,
  });

  final VoidCallback? onPressed;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
       leading:  const TCircularImage(image: TImages.user, width: 50, height: 50, padding: 0,),
       title: Text('FlutterAddictMan', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
       subtitle: Text("info@flutterdddictman.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
       trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: TColors.white,)),
     );
  }
}