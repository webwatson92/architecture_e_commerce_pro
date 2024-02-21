
import 'package:e_commerce_pro/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_pro/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/enums.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),

            /// Price 
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: "150", isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,), 

        /// Title
        const TProductTitleText(title: 'Greenk Nike SPort Shirt'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5), 

        // Stock status
        Row(children: [
          const TProductTitleText(title: 'Status'),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
        ],), 
        const SizedBox(height: TSizes.spaceBtwItems / 1.5), 

        /// Brand
        Row(
          children: [
            TCircularImage(image: TImages.cosmeticsIcon, width: 32, height: 32, 
              overlayColor: darkMode ? TColors.dark : TColors.light,),
            const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,), 
          ],
        ), 
        
      ],
    );
    
  }
}
