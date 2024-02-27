import 'package:e_commerce_pro/common/widgets/products/ratings/rating_widget.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.user),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text("Youssouf", style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        /// Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4), 
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('25 Fev 2024', style: Theme.of(context).textTheme.bodyMedium), 
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const ReadMoreText(
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro possimus ipsam ea recusandae, enim perspiciatis voluptates reprehenderit saepe earum dolor, veritatis cupiditate sed in accusamus. Dicta aut vitae eos delectus!",
          trimLength: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: " Show less",
          trimCollapsedText: " show more",
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColors),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColors),
        ), 
        const SizedBox(height: TSizes.spaceBtwItems,),

        // Company Rewiew
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md), 
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store", style: Theme.of(context).textTheme.titleMedium,),
                    Text("25 Fev 2024", style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ), 
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro possimus ipsam ea recusandae, enim perspiciatis voluptates reprehenderit saepe earum dolor, veritatis cupiditate sed in accusamus. Dicta aut vitae eos delectus!",
                  trimLength: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: " Show less",
                  trimCollapsedText: " show more",
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColors),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primaryColors),
                ), 
              ],
            ),
          ),
        ), 
        const SizedBox(height: TSizes.spaceBtwSections,),
      ],
    );
  }
}