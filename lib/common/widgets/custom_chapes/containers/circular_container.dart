import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
   const TCircularContainer({
    super.key, 
    this.width = 400, 
    this.height = 400, 
    this.radius = 400, 
    this.margin,
    this.padding = 0, 
    this.child, 
    this.backgroundColor = TColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? height, 
      width: width ?? width,
      margin: margin ?? margin,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius), 
        color: backgroundColor,
      ),
      child: child,
    );
  }
}