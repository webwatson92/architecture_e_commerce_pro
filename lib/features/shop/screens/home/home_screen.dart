import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/circular_container.dart';
import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/primary_header_container.dart';
import 'package:e_commerce_pro/features/shop/screens/home/widgets/home_appBar.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Stack(
                children: [
                  Positioned(top: -150, right: -250,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),),
                  Positioned(top: 100,right: -300,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: THomeAppBar(),
                  ),
                ],
              ),
            ),

            //SearchBar HERE
            
            
          ],
        ),
      ),
    );
  }
}

