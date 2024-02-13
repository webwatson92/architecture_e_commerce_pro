
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key, 
    required this.itemCount, 
    this.mainAxisExtent = 288, 
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // for(int i=0; i<)
      itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: TSizes.gridViewSpacing,
          crossAxisSpacing: TSizes.gridViewSpacing,
        ), 
        itemBuilder: itemBuilder,
        // (_, index) => const TPopularCardVertical()
    );
  }
}
