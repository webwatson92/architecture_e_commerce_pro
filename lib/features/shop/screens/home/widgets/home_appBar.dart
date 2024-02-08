import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/products/cart/card_menu_icon.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Text(TTexts.homeAppBarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
          Text(TTexts.homeAppBarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
        ],
      ),
      actions: [
        TCardCounterIcon(onPressed: () {  }, iconColor: TColors.white,)
      ],                      
    );
  }
}

