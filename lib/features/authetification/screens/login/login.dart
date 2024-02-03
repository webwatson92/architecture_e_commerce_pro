import 'package:e_commerce_pro/common/styles/spacing_styles.dart';
import 'package:e_commerce_pro/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_pro/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_pro/features/authetification/screens/login/widgets/login_form.dart';
import 'package:e_commerce_pro/features/authetification/screens/login/widgets/login_header.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                //Logo, titre et sous titre
                const TLoginHeader(),

                //Formulaire
                const TLoginForm(),

                //Divider
                TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                
                const SizedBox(height: TSizes.spaceBtwSections),
                
                //Footer
                const TSocialButtons()
                
              ],
            ),
          ),
        ),
    );
  }
}






