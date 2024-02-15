import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/search_container.dart';
import 'package:e_commerce_pro/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_pro/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_pro/common/widgets/products/cart/card_menu_icon.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/enums.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCardCounterIcon(onPressed: (){}, iconColor: dark ? TColors.white : TColors.black,),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled){
        return [
          SliverAppBar(
            automaticallyImplyLeading: false, 
            pinned: true, 
            floating: true, 
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:  [
                  //Search Bar
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSearchContainer(
                    text: 'Search in Store', 
                    showBorder: true, 
                    showBackground: false, 
                    padding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  // Features Brands
                  TSectionHeading(title: "Features Brands", onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                  TGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index){
                    return  GestureDetector(
                     onTap: (){},
                     child: TRoundedContainer(
                      padding: const EdgeInsets.all(TSizes.sm),
                      showBorder: true, 
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          //--- Icon
                          Flexible(
                            child: TCircularImage(
                              isNetworkImage: false,
                              image: TImages.clothIcon, 
                              backgroundColor: Colors.transparent,
                              overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
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
                ),
                  
                ],
              ),
            ),
          )
        ];
      }, body: Container()),
    );
  }
}
