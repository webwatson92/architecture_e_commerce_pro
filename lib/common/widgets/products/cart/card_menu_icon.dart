import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCardCounterIcon extends StatelessWidget {
  const TCardCounterIcon({
    super.key, 
    required this.iconColor, 
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.shopping_bag, color: TColors.white),
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


