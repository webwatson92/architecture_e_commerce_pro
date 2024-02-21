import 'package:e_commerce_pro/common/icons/t_circular_icon.dart';
import 'package:e_commerce_pro/common/styles/shadow.dart';
import 'package:e_commerce_pro/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_pro/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_pro/features/shop/screens/profuct_details/product_detail.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
   final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const DetailScreen()),
      child: Container(
        width: 180, 
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow], 
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child:  Column(
          children: [
            //Thumbail, Wishlist button, Discount tag
            TRoundedContainer(
              height: 180, 
              padding: const EdgeInsets.all(TSizes.sm), 
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbail Image
                  const TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true),
      
                  //Sale Tag
                  Positioned(
                    top: 10,
                    child: TRoundedContainer(
                      radius: TSizes.sm, 
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text("25%", style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                    ),
                  ),
                  
                  //Favorite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0, 
                    child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,))
                  
                ]
              ), 
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2,), 
             
            //Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   TProductTitleText(title: 'Green Nike Air Shoes', smallSize: true,),
                   SizedBox(height: TSizes.spaceBtwItems / 2,), 
                   TBrandTitleWithVerifiedIcon(title: 'Nike',),

                ],
              ),
            ),
            //Spacer
            const Spacer(),
            
            //Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Price
                const TProductPriceText(price: "35.0"),

                //Add to Card Button
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.black, 
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                   
                  ),
                )
              ],
            )
                
          ],
        ),
      ),
    );
  }
  
}

