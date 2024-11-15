
import 'package:e_commerce_pro/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_pro/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_pro/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        Container(
          width: 50, 
          height: 50, 
          alignment: Alignment.centerLeft,
          child: TRoundedImage(
            imageUrl: TImages.sportIcon,
            padding: const EdgeInsets.all(TSizes.spaceBtwSections),
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.darkerGrey
                : TColors.light,
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwSections,),
    
        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: TProductTitleText(title: "Black Sports shoes", maxLines: 1,)),
          
              ///Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Color ", style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: "Green ", style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: "Size ", style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: "UK OB ", style: Theme.of(context).textTheme.bodyLarge),
                  ]
                )
              )

            ],
          ),
        ),
      ],
    );
  }
}
