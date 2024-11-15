import 'package:e_commerce_pro/common/widgets/products/rounded_container.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // TextField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here...',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none, 
                disabledBorder: InputBorder.none
              ),
            ),
          ),
    
          //Button
          SizedBox(
            width:80, 
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? TColors.white.withOpacity(0.5) : TColors.dark.withOpacity(0.5), 
                backgroundColor: Colors.grey.withOpacity(0.2), 
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),  
              ),
              child: const Text('Apply')
            )
          )
        ],
      ),
    );
  }
}