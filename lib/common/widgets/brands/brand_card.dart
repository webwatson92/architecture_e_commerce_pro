
import 'package:e_commerce_pro/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/enums.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder, 
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
     onTap: onTap,
     child: TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.sm),
      showBorder: showBorder, 
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          //--- Icon
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImages.clothIcon, 
              backgroundColor: Colors.transparent,
              overlayColor: isDark ? TColors.white : TColors.black,
            ),
          ), 
          const SizedBox(height: TSizes.spaceBtwItems / 2,),
     
          // --- TEXT
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large,),
                 Text(
                  '256 products dddddddddd ddd',
                  overflow: TextOverflow.ellipsis, 
                  style: Theme.of(context).textTheme.labelMedium,
                 )
              ],
            ),
          )
     
        ],
      ),
    ),
   );
  }
}
