import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/primary_header_container.dart';
import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/search_container.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/features/shop/screens/home/widgets/home_appBar.dart';
import 'package:e_commerce_pro/features/shop/screens/home/widgets/home_categorie.dart';
import 'package:e_commerce_pro/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Container
             TPrimaryHeaderContainer(
              child: Column(
                children: [
                    Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: THomeAppBar(),
                  ),
                   SizedBox(height: TSizes.spaceBtwSections),

                  //SEARCH BAR SECTION
                   TSearchContainer(text: 'Search in store here',),
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
                ],
              ),
            ),

            //BODY ---Here
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(banner: [
                TImages.promoBanner2,
                TImages.promoBanner3,
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
