import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/primary_header_container.dart';
import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/search_container.dart';
import 'package:e_commerce_pro/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_pro/features/shop/screens/home/widgets/home_appBar.dart';
import 'package:e_commerce_pro/features/shop/screens/home/widgets/home_categorie.dart';
import 'package:e_commerce_pro/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final List<String> product;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Container
              const TPrimaryHeaderContainer(
              child: Column(
                children: [
                    Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: THomeAppBar(),
                  ),
                   SizedBox(height: TSizes.spaceBtwSections),

                  //SEARCH BAR SECTION
                   TSearchContainer(text: 'Search in store here', showBackground: false, showBorder: true, padding: EdgeInsets.all(TSizes.spaceBtwItems),),
                   SizedBox(height: TSizes.spaceBtwSections),

                  //CATEGORIES SECTION
                  Padding(
                    padding:  EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                         TSectionHeading(title: "Popular Categories", showActionButton: false, textColor:  Colors.white),
                         SizedBox(height: TSizes.spaceBtwItems),

                        //Categories
                        THomeCategorie()
                      ],
                    ),

                    //
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            //BODY ---Here
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // -- PROMO SLIDER 
                  const TPromoSlider(banner: [TImages.promoBanner2, TImages.promoBanner3,],),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //Heading
                  TSectionHeading(title: "Popular Products", onPressed: () => Get.to(const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  
                  // -- Produit populaire
                  // for(int i=0; i<product.length; i++)
                  TGridLayout(itemCount: 2, itemBuilder:  (_, index) => const TProductCardVertical(), ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
