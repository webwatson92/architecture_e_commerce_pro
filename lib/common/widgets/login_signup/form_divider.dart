import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/text_string.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFormDivider extends StatelessWidget {
  
  final String dividerText;

  const TFormDivider({
    super.key,
    required this.dividerText,
  });

 

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
        Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 0.5, endIndent: 60,))
      ],
    );
  }
}