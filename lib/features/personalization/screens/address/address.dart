import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/features/personalization/screens/address/add_new_address.dart';
import 'package:e_commerce_pro/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: TColors.primaryColors,
          onPressed: () => Get.to(() => const AddNewAddressScreen()),
          child: const Icon(Iconsax.add, color: TColors.white,),
        ),
        appBar: TAppBar(
          showBackArrow: true,
          title: Text('Addresses', style: Theme.of(context).textTheme.headlineMedium,), 
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace), 
            child: Column(
              children: [
                TSingleAddress(selectedAddress: false),
                TSingleAddress(selectedAddress: true),
              ],
            ),
          ),
        ),
    );
  }
}
