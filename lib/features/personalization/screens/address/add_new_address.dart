import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Add new Address', style: Theme.of(context).textTheme.headlineMedium,), 
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),)),
                    const SizedBox(width: TSizes.spaceBtwItems,),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'),)),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'),)),
                    const SizedBox(width: TSizes.spaceBtwItems,),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State'),)),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
                const SizedBox(height: TSizes.defaultSpace,),
                SizedBox(width: double.infinity, child: ElevatedButton(child: const Text('Save'), onPressed: (){},),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
