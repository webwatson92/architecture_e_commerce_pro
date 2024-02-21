import 'package:e_commerce_pro/common/widgets/choice/choice_chip.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.dark : TColors.light,
          child:  Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: "Price : ", smallSize: true,),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                      
                          /// Sale price
                          const TProductPriceText(price: "20"),
                        ],
                      ),

                      /// Stock Row
                      Row(
                        children: [
                          const TProductTitleText(title: "Stock : ", smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),
                        ],
                      )
                    ],
                  )
                ],
              ),
              
              /// Variation Description
              const TProductTitleText(
                title: "This is the Description of the Product and it dan go up to max 4 lines.",
                maxLines: 4, 
                smallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors", showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){},),
              ],
            ),
          ],
        ),

        /// -- Column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors", showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){},),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){},),
                TChoiceChip(text: 'EU 28', selected: false, onSelected: (value){},),
              ],
            ),
          ],
        )

      ],
    );
  }
}
