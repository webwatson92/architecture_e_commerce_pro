import 'package:e_commerce_pro/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce_pro/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_price_text.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({Key? key, this.showAddRemoveButtons = true}) : super(key: key);

  final bool showAddRemoveButtons; 
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flexible(
          fit: FlexFit.loose, // Adjusted to FlexFit.loose to allow flexible sizing
          child: ListView.separated(
            shrinkWrap: true, // Adjusted to true to allow for flexible height
            itemCount: 2,
            separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
            itemBuilder: (_, index) => Column(
              children: [
                // Cart Item
                const TCartItem(),
                if(showAddRemoveButtons) const SizedBox(height: TSizes.spaceBtwSections),

                // Add Remove Button
                if(showAddRemoveButtons)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Extra Space
                      SizedBox(width: 70),
                      
                      /// Add Remove Buttons 
                      TProductQuantityWithAndRemoveButton(),

                      // --- Product Total price
                      TProductPriceText(price: "250")
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
