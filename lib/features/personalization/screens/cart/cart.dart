import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
            itemBuilder: (_, index) => Column(
              children: [
                Row(
                  children: [
                    /// Image
                    TRoundedImage(
                      imageUrl: TImages.shoeIcon, 
                      width: 60, 
                      height: 60, 
                      padding: const EdgeInsets.all(TSizes.sm), 
                      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
                    ), 
                    const SizedBox(width: TSizes.spaceBtwItems,),
                  ],
                )
              ],
            ), 
          ),
        ),
      ),
    );
  }
}