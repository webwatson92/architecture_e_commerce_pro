// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_pro/common/icons/t_circular_icon.dart';
import 'package:e_commerce_pro/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_pro/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 320, 
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.grey,
      ),
      child: Row(
        children: [
          /// Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true),

                // Sale Tag
                Positioned(
                  top: 10,
                  child: TRoundedContainer(
                    radius: TSizes.sm, 
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                ),
                
                // Favorite Icon Button
                const Positioned(
                  top: 0,
                  right: 0, 
                  child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
                )
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: "Green Nike Half Sleeves Shirt", smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: "Nike"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      Flexible(child: TProductPriceText(price: "245.0 - 25646.6")),

                      /// Add to cart
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.black, 
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add, color: TColors.white),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
