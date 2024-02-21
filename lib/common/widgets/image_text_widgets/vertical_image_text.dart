import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, 
    this.backgroundColor, 
    required this.title, 
    this.textColor = Colors.white, 
    this.onTap,
    required this.image,
  });

  final Color? backgroundColor;
  final String title, image;
  final Color textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? TColors.dark : TColors.white), 
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover, color: dark ? TColors.light : TColors.dark ),
              ),
            ),
        
            //Text
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
            SizedBox(
              width: 55, 
              child: Text(
                title, 
                style: const TextStyle(color: TColors.white, fontSize: 10.0),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}