import 'package:e_commerce_pro/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_pro/features/authetification/screens/login/login.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/constants/text_string.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScrren extends StatelessWidget {
  const VerifyEmailScrren({
    super.key,
  });


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
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: const AssetImage(TImages.deliveredEmailIllustration), width: THelperFunctions.screenWidth() * 0.6),
              
              /// Title &  SubTitle
              Text(TTexts.confirmEmailTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text("support@parlons-digital.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              
              /// Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.staticSuccessIllustration,
                  title: TTexts.yourAccountCretedTitle, 
                  subTitle: TTexts.yourAccountCretedSubTitle, 
                  onPressed: () {
                    print("clicked");
                    Get.to(() => const LoginScreen());
                  },
                ), ),
                child: const Text(TTexts.tContinue))
              ),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail))), 
            ],
          ),
        ),
      ),
    );
  }
}