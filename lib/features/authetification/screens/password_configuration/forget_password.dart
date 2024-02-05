import 'package:e_commerce_pro/features/authetification/screens/login/login.dart';
import 'package:e_commerce_pro/features/authetification/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child:  Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Titre & Textte
                 Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineLarge),
                 const SizedBox(height: TSizes.spaceBtwItems,),
                 
                 Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.bodySmall),
                 const SizedBox(height: TSizes.spaceBtwSections * 2,),
                
                //Formulaire
                TextFormField(
                  decoration:  const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right), 
                    labelText: TTexts.email,
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),

                //Buttons
                SizedBox(width: double.infinity, 
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const PasswordResetEmailScreen()),
                  child: const Text(TTexts.submit),
                ), 
               ), 
              ],
            ),
          ),
      ),
    );
  }
}