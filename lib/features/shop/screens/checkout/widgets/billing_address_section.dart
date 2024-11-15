import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TSectionHeading(title: "Shipping Address", buttonTitle: "Change", ),
        Text("Coding T", style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
        
        Row(
          children: [
              const Icon(Icons.phone, color: Colors.grey, size: 16,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text("+225 0777653212", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),

        Row(
          children: [
              const Icon(Icons.location_history, color: Colors.grey, size: 16,),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text("Abidjan, Cocody-Angré", style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2,),
      ],
    );
  }
}