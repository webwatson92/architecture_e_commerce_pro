import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviwsScreen extends StatelessWidget {
  const ProductReviwsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      /// AppBar
      appBar: const TAppBar(title: Text("Reviens & Rating"), showBackArrow: true,),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Ratings ans reviews are versions and are from people who use the some type of device that you use."), 
              const SizedBox(height: TSizes.defaultSpace,), 

              /// Overrall Product Rating
              const TOverrallProductRating(),
              RatingBarIndicator(
                rating: 3.5,
                itemSize: 20.0,
                unratedColor: TColors.grey,
                itemBuilder: (_, __) => const Icon(Iconsax.star1, color: TColors.primaryColors),   
              ),

            ],
          ),
        ),
      ),
    );
  }
}
