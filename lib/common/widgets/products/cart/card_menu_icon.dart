import 'package:e_commerce_pro/features/shop/screens/cart/cart.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TCardCounterIcon extends StatelessWidget {
  const TCardCounterIcon({
    super.key, 
    this.iconColor, 
    required this.onPressed, 
    this.counterBgColor, 
    this.counterTextCounter,
  });

  final Color? iconColor, counterBgColor, counterTextCounter;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children:[
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          top: 2,
          right: 5,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('5', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8),)
            ),
          ),
          
        )
      ],
    );
  }
}


