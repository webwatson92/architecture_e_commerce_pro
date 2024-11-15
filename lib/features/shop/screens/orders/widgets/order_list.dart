import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwItems) ,
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// -- Row Ligne complète à dupliquer en cas de besoin
            Row(
              children: [
                /// 1 - Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems / 2),

                /// 2 - Status & Data
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( 'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primaryColors, fontWeightDelta: 1),
                      ), 
                      Text('20 Oct 2024', style: Theme.of(context).textTheme.headlineSmall,),
                    ],
                  ),
                ),

                /// 3 - Icon button
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34)),
              ],
            ), 

            const SizedBox(height: TSizes.spaceBtwItems,),

            /// -- Row 2 
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),
                  
                      /// 2 - Status & Data
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text( 'Order',
                              style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primaryColors, fontWeightDelta: 1),
                            ), 
                            Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      /// 1 - Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),
                  
                      /// 2 - Status & Data
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text( 'Order',
                              style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primaryColors, fontWeightDelta: 1),
                            ), 
                            Text('21 Oct 2024', style: Theme.of(context).textTheme.titleMedium,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ), 
            

            
          ],
        ),
      )
    );

  }
  
}