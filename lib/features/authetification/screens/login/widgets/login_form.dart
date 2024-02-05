import 'package:e_commerce_pro/features/authetification/screens/password_configuration/forget_password.dart';
import 'package:e_commerce_pro/features/authetification/screens/signup/signup.dart';
import 'package:e_commerce_pro/navigation_menu.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration:  const InputDecoration(prefixIcon: Icon(Iconsax.direct), labelText: TTexts.email),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField,),
             TextFormField(
              decoration:  const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check), 
                labelText: TTexts.password,suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
             const SizedBox(height: TSizes.spaceBtwInputField / 2,),
        
             //Remember Me & Forget Password
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Remerber Me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(TTexts.rememberMe),
                    ],
                  ),
        
                  // Forget Password
                  TextButton(
                    
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(TTexts.forgetPassword),
                  ),
                ],
             ),
    
             const SizedBox(height: TSizes.spaceBtwSections),
             
             //Sign in Button
             SizedBox(
               width: double.infinity,
               child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()), 
                  child: const Text(TTexts.signIn)
               ),
             ),
    
             const SizedBox(height: TSizes.spaceBtwItems),
    
             //Create account Button
             SizedBox(
               width: double.infinity,
               child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignUpScreen()), 
                  child: const Text(TTexts.createAccount)
               ),
             ),
    
        ],),
      )
    );
  }
}
