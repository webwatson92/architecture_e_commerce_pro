import 'package:e_commerce_pro/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_pro/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCategorie extends StatelessWidget {
  const THomeCategorie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount : 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) { 
          return TVerticalImageText(image: TImages.shoeIcon, title: "Shoes", onTap: (){
              print("OnTap");
          },);
        },
    
      ),
    );
  }
}


