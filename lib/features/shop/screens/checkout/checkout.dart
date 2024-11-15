import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_pro/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_pro/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_pro/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_pro/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_pro/navigation_menu.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    
    return Scaffold(
        appBar: TAppBar(showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Items in cart => les produits dans le panier
                const TCartItems(showAddRemoveButtons: false),
                const SizedBox(height: TSizes.spaceBtwSections),

                // Coupon  TextField
                const TCouponCode(),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Billing Section
                
                TRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(TSizes.md),
                  backgroundColor: dark ? TColors.black : TColors.white,
                  child: const Column( 
                    children: [
                      /// Pricing
                      TBillingAmountSection(),
                      SizedBox(height: TSizes.spaceBtwItems),
                      
                      /// Divider
                      Divider(),
                      SizedBox(height: TSizes.spaceBtwItems),
                      
                      /// Payment
                      TBillingPaymentSection(),
                      SizedBox(height: TSizes.spaceBtwItems),

                      /// Address
                      TBillingAddressSection(),
                      SizedBox(height: TSizes.spaceBtwItems),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //Chechout button
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () => Get.to(
              () => SuccessScreen(
                image: TImages.successfulPaymentIcon,
                title: 'Payment Success',
                subTitle: 'Your item will be shipping soon',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              )
            ), 
            child: const Text('Checkout \$256.0'),
          ),
        ),
    );
  }
}

