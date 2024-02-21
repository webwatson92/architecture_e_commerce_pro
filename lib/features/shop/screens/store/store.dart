import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/common/widgets/appBar/tabBar.dart';
import 'package:e_commerce_pro/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/search_container.dart';
import 'package:e_commerce_pro/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_pro/common/widgets/products/cart/card_menu_icon.dart';
import 'package:e_commerce_pro/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_pro/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    
    final dark = THelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            TCardCounterIcon(onPressed: (){}, iconColor: dark ? TColors.white : TColors.black,),
          ],
        ),
        body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false, 
              pinned: true, 
              floating: true, 
              backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
              expandedHeight: 440, //espace entre AppBar et TabBar
      
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children:  [
                    //Search Bar
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    const TSearchContainer(
                      text: 'Search in Store', 
                      showBorder: true, 
                      showBackground: false, 
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems,),
      
                    // --- Features Brands
                    TSectionHeading(title: "Features Brands", onPressed: (){},),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),
      
                    // --- Brands GRID
                    TGridLayout(
                      itemCount: 4, 
                      mainAxisExtent: 80, 
                      itemBuilder: (_, index){
                      return  const TBrandCard(showBorder: false,);
                    }
                  ),
                    
                  ],
                ),
              ),
      
              //Tabs
              bottom:  const TTabBar(tabs: [
                Tab(child: Text("Sports")),
                Tab(child: Text("Fourniture")),
                Tab(child: Text("Electonics")),
                Tab(child: Text("Clothes")),
                Tab(child: Text("Cosmetics")),
              ],),
            )
          ];
        },
      
        
        body: const TabBarView(
            children: [TCategoryTab(), TCategoryTab(), TCategoryTab(),TCategoryTab(),TCategoryTab(),]
          )
        ),
      ),
    );
  }
}
