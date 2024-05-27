import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_commerce_pro/features/personalization/screens/cart/add_remove_button.dart';
import 'package:e_commerce_pro/features/personalization/screens/cart/cart_item.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (_, __) => const SizedBox(height: 32),
          itemBuilder: (_, index) =>  const Column(
            children: [
              TCartItem(),
              SizedBox( height: TSizes.spaceBtwSections),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Extrat Space
                  SizedBox(width: 70,), 
                  /// Add Remove Buttons 
                  TProductQuantityWithAndRemoveButton(),  
                  TProductPriceText(price: "250")
                ],
              ),
            ],
          ), 
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text('Checkout \$256.0'),),
      ),

    );
  }
}

