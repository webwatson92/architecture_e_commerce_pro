import 'package:e_commerce_pro/features/shop/screens/profuct_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_pro/features/shop/screens/profuct_details/widgets/product_meta_data.dart';
import 'package:e_commerce_pro/features/shop/screens/profuct_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              //1 -Product Slider
               TProductImageSlider(),

              //2- Product details
              Padding(
                padding:  EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// - Rating & share Button
                    TRatingAndShare(),
                    
                    TProductMetaData(),
                    /// - Price, Title, Stock, Brand
                    /// - Attributes
                    /// - Checkout Button
                    /// - Description
                    /// - Reviews
                  ],
                ),
              )

          ],

        ),
      ),
    );
  }
}
