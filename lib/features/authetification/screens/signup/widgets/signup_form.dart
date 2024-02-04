import 'package:e_commerce_pro/features/authetification/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
   
    
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName, 
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputField,),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName, 
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ) 
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputField,),
    
          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.userName, 
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
           const SizedBox(height: TSizes.spaceBtwInputField,), 
    
          //email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email, 
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField,),
    
          //Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo, 
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField,),
    
          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password, 
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputField,),
    
          //Terms&conditions Checknox
          const TTermsAndConditionCheckBox(),
          const SizedBox(height: TSizes.spaceBtwSections),
    
          //sign up button
          SizedBox(width: double.infinity, child: ElevatedButton(
            onPressed: (){},
            child: const Text(TTexts.createAccount),
          )),
          const SizedBox(height: TSizes.spaceBtwSections,),
        ],
      ),
    );
  }
}

