

import 'package:e_commerce_pro/common/icons/t_circular_icon.dart';
import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_pro/features/shop/screens/home/home_screen.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoritScreen extends StatelessWidget{

  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: TAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium), 
        actions: [
          TCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),)
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }

}