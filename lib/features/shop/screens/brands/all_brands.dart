import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_pro/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/features/shop/screens/brands/brand_products.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(title: Text("Brand"), showBackArrow: true,),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Heading
                const TSectionHeading(title: "Brands", showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),

                /// -- Brands
                TGridLayout(
                  itemCount: 10, 
                  mainAxisExtent: 80, 
                  itemBuilder: (context, index) => TBrandCard(
                    showBorder: true,
                    onTap: () => Get.to(() => const BrandProducts()),
                  ),
                ),
              ],
            ),
            
          ),
        ),
    );
  }
}