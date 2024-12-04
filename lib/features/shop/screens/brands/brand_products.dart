import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_pro/common/widgets/products/sortable/t_sortable_product.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              const TBrandCard(showBorder: true),
              const SizedBox(height: TSizes.spaceBtwItems,),

              const TSortableProduct(),
            ],
          ),
        ),
      ),
    );
  }
}