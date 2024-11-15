import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/primary_header_container.dart';
import 'package:e_commerce_pro/common/widgets/list_titles/setting_menu_titles.dart';
import 'package:e_commerce_pro/common/widgets/list_titles/user_profile_title.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/features/personalization/screens/address/address.dart';
import 'package:e_commerce_pro/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce_pro/features/shop/screens/cart/cart.dart';
import 'package:e_commerce_pro/features/shop/screens/orders/order.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContainer(child: Column(
              children: [
                TAppBar( title: Text("Account", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.light)),),
                const SizedBox(height: TSizes.spaceBtwItems),

                //user profile card
               TUserProfileTitle(onPressed: () => Get.to(() => const ProfileScreen())),
               const SizedBox(height: TSizes.spaceBtwSections,),
              ],
            )),

            //Body
            Padding(
              padding:const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                    //Account Setting
                    const TSectionHeading(title: 'Account setting', showActionButton: false,), 
                    const SizedBox(height: TSizes.spaceBtwItems,),

                    TSettingsMenuTitle(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivry address',onTap: () => Get.to(() => const UserAddressScreen()), ),
                    TSettingsMenuTitle(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout',onTap: () => Get.to(() => const CartScreen() ), ),
                    TSettingsMenuTitle(icon: Iconsax.bag_tick, title: 'My order', subTitle: 'In-progress and Completed Orders',onTap: () => Get.to(() => const OrderScreen() ), ),
                    TSettingsMenuTitle(icon: Iconsax.bank, title: 'Bank account', subTitle: 'Withdraw balance to registered bank account',onTap: (){}, ),
                    TSettingsMenuTitle(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons',onTap: (){}, ),
                    TSettingsMenuTitle(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message',onTap: (){}, ),
                    TSettingsMenuTitle(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage abd connected accounts',onTap: (){}, ),
                
                    //App setting 
                    const SizedBox(height: TSizes.spaceBtwSections,),
                    const TSectionHeading(title: "App Setting", showActionButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    TSettingsMenuTitle(icon: Iconsax.document_upload, title: 'Load data', subTitle: 'Upload Data to your Cloud Firebase',onTap: (){}, ),
                    TSettingsMenuTitle(
                      icon: Iconsax.location, 
                      title: 'Geolocalisation', 
                      subTitle: 'Set recommandation based on location',
                      trailing: Switch(value: true, onChanged: (value){},),
                    ),
                    TSettingsMenuTitle(
                      icon: Iconsax.security_user, 
                      title: 'Safe mode', 
                      subTitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value){},),
                    ),
                    TSettingsMenuTitle(
                      icon: Iconsax.image, 
                      title: 'HD Image Quality', 
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value){},),
                    ),

                  //Logout button
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){print("deconnecté");}, child: const Text('Logout'),),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
