
import 'package:e_commerce_pro/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    

    return TRoundedContainer(
      showBorder: true, 
      borderColor: TColors.darkGrey, 
      backgroundColor: Colors.transparent, 
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brands with Products Count
          const TBrandCard(showBorder: false, ), 
          const SizedBox(height: TSizes.spaceBtwItems,),
          
          // Brand Top 3 Products Images
          Row(
            children: images.map((image) =>  BrandTopProductImageWidget(image, context)).toList(),
          )
    
        ],
      ),
    );
  }

  Widget BrandTopProductImageWidget(String image, context){
    return Expanded(
      child: TRoundedContainer(
        height: 100, 
        backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,   
        margin: const EdgeInsets.only(right: TSizes.sm, left: TSizes.sm, bottom: TSizes.sm),
        child: Image(image: AssetImage(image) ),                           
      ),
    ); 
  }

}//end class

