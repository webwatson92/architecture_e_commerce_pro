import 'package:e_commerce_pro/common/widgets/brands/brand_showcase.dart';
import 'package:e_commerce_pro/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children : [  
        Padding(
         padding:  const EdgeInsets.all(TSizes.defaultSpace), 
          child:  Column(
          children: [
            // Brands
            const TBrandShowcase(images: [TImages.productImage1,TImages.productImage1, TImages.productImage1,],), //
            const TBrandShowcase(images: [TImages.productImage1,TImages.productImage1, TImages.productImage1,],), //
            const SizedBox(height: TSizes.spaceBtwItems,),
      
            // Products
            TSectionHeading(title: 'You might like', onPressed: () {}),
            const SizedBox(height: TSizes.spaceBtwItems,),
      
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
          ],
        ),
        ),
      ],
    );
  }
}