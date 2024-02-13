import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key, 
    this.width, 
    this.height, 
    this.size = TSizes.lg, 
    this.onPressed, 
    this.color, 
    this.backgroundColor, 
    required this.icon,
  });

  final double? width, height, size;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null 
          ? backgroundColor! 
          : THelperFunctions.isDarkMode(context)
            ? TColors.black.withOpacity(0.9) 
            : TColors.white.withOpacity(0.9)    
      ),
      child: IconButton(onPressed: (){}, icon: Icon(icon, color: color, size: size,)),
    );
  }
}