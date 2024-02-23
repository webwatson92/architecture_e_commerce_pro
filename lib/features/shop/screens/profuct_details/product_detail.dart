import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce_pro/features/shop/screens/profuct_details/widgets/buttom_add_to_cart_widget.dart';
import 'package:e_commerce_pro/features/shop/screens/profuct_details/widgets/product_attributes.dart';
import 'package:e_commerce_pro/features/shop/screens/profuct_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_pro/features/shop/screens/profuct_details/widgets/product_meta_data.dart';
import 'package:e_commerce_pro/features/shop/screens/profuct_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: const TBottomAddCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
              //1 -Product Slider
               const TProductImageSlider(),

              //2- Product details
              Padding(
                padding:  const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// - Rating & share Button
                    const TRatingAndShare(),
                    
                    /// - Price, Title, Stock, Brand
                    const TProductMetaData(),

                    /// - Attributes
                    const TProductAttributes(),
                    const SizedBox(height: TSizes.spaceBtwSections,), 

                    /// - Checkout Button
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                    const SizedBox(height: TSizes.spaceBtwSections,),

                    /// - Description
                    const TSectionHeading(title: "Description", showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    const ReadMoreText(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio rem recusandae ducimus vitae soluta pariatur doloribus iusto est autem neque velit fugit iure, nulla dolorem. Aperiam ullam cum fugiat alias.',
                      trimLines: 2, 
                      trimMode: TrimMode.Line, 
                      trimCollapsedText: ' Show more',
                      trimExpandedText: ' Less',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),

                    /// - Reviews
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         const TSectionHeading(title: "Reviens (199)", showActionButton: false,), 
                         IconButton(onPressed: () => Get.to(() => const ProductReviwsScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                      ],
                    ), 
                    const SizedBox(height: TSizes.spaceBtwSections,),
                  ],
                ),
              )

          ],

        ),
      ),
    );
  }
}
