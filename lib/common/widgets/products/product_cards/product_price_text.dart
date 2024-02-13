import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key, required this.price, 
    this.isLarge = false, 
    this.currencySign = '\$', 
    this.maxLines = 1, 
    this.lineThrough = false,
  });

  final String price, currencySign; 
  final int maxLines;
  final bool lineThrough;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price, 
      maxLines: 1, 
      overflow: TextOverflow.ellipsis,
      style: isLarge 
        ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null) 
        : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}