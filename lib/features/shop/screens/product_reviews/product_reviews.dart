import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/products/ratings/rating_widget.dart';
import 'package:e_commerce_pro/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_commerce_pro/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviwsScreen extends StatelessWidget {
  const ProductReviwsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      /// AppBar
      appBar: const TAppBar(title: Text("Reviews & Rating"), showBackArrow: true,),

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
              const TRatingBarIndicator(rating: 3.5,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}

