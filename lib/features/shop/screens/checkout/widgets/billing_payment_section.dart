import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    
    return Column(
      children: [
        const TSectionHeading(title: "Payment Method", buttonTitle: "Change", ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.paypal), fit: BoxFit.contain),
            ),
             const SizedBox(width: TSizes.spaceBtwItems / 2,),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}