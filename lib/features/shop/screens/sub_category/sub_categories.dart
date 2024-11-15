// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Sports"), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(TSizes.defaultSpace),
          child : Column(
            children: [
              /// Banner
              TRoundedImage(width: double.infinity, imageUrl: TImages.promoBanner4, applyImageRadius: true,),
              SizedBox(height: TSizes.spaceBtwSections,),

              /// Sub-categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports shirts',),
                  SizedBox(height: TSizes.spaceBtwItems / 2),

                  // TProductCardHorizontal(),

                SizedBox(
                  height: 120,
                    child: ListView.separated(
                      itemCount: 4, 
                      scrollDirection: Axis.horizontal, 
                      separatorBuilder: (context, index) => SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => TProductCardHorizontal(),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}