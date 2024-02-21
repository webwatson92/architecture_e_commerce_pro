
import 'package:e_commerce_pro/common/icons/t_circular_icon.dart';
import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/custom_chapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_pro/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    
    return TCurveEdgeWidget(
      child: Container(
        color: dark ? TColors.darkGrey : TColors.light,
        child:  Stack(
          children: [
            /// Main Large Image
            const SizedBox(height: 400,child: Padding(
              padding: EdgeInsets.all(TSizes.productImageRadius * 2),
              child: Center(child: Image(image: AssetImage(TImages.productImage1))),
            )), 
    
            /// Image Slider
            Positioned(
              right: 0,left: TSizes.defaultSpace,bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                    itemBuilder: (_, index) => TRoundedImage(
                      width: 80,
                      backgroundColor: dark ? TColors.dark : TColors.white,
                      border: Border.all(color: TColors.primaryColors),
                      imageUrl: TImages.shoeIcon
                    ), 
                ),
              ),
            ), 
    
            /// AppBar Icons
            const TAppBar(
              showBackArrow: true, 
              actions: [
                TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            ) 
            
          ],
        ),
      ),
    );
  }
}