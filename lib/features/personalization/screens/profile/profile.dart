import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(title: Text("Profile"), showBackArrow: true, ),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
          
            children: [
              //Image profile
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              

              //Details profile
              const SizedBox(height: TSizes.spaceBtwItems / 2,), 
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems), 
              const TSectionHeading(title: 'Profile Information', showActionButton: false,),

              const TProfileMenu(title: "Name", value: "</FlutterMan>",),
              const TProfileMenu(title: "Username", value: "</El Hadj>",),
              
              const SizedBox(height: TSizes.spaceBtwItems), 
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems), 
              
              //Heading Personal Info
              const TSectionHeading(title: 'Personal information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems), 

              TProfileMenu(title: "UserId", value: "03042565G", icon: Iconsax.copy , onPressed: (){},),
              TProfileMenu(title: "E-Mail", value: "flutterman@test.com", onPressed: (){},),
              TProfileMenu(title: "Gender", value: "Male", onPressed: (){},),
              TProfileMenu(title: "Date of birth", value: "10 Oct 2024", onPressed: (){},),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){

                  }, 
                  child:  OutlinedButton(
                    onPressed: (){print("Compte supprimé");}, 
                    child: const Text('Close Account', style: TextStyle(color: Colors.red))),
                  // child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
                )
              ),






            ],
          ),
        ),
      ),
    );
  }
}
