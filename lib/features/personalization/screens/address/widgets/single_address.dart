import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
        width: double.infinity,
        padding: const EdgeInsets.all(TSizes.md),
        showBorder: true, 
        backgroundColor: selectedAddress ? TColors.primaryColors.withOpacity(0.5) : Colors.transparent,
        borderColor: selectedAddress ? Colors.transparent
          : dark 
              ? TColors.darkGrey
              : TColors.grey,
        margin: const EdgeInsets.only(bottom : TSizes.spaceBtwItems),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FlutterMan', 
                  maxLines: 1, 
                  overflow: TextOverflow.ellipsis, 
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: TSizes.sm / 2,), 
                const Text(
                  '(+225) 0777653212', 
                  maxLines: 1, 
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: TSizes.sm / 2,), 
                const Text(
                  '2386 Abidjan 23, Yop city Yop city', 
                  maxLines: 2, 
                  softWrap: true,
                ),
              ],
            ),
            Positioned(
              right: 5,
              top: 0,
              child: Icon( 
                selectedAddress ? Iconsax.tick_circle : null, 
                color : selectedAddress 
                  ? dark 
                      ? TColors.light
                      : TColors.dark
                  : null, 
              ),
            ),
          ],
        ),

    );
  }
}