
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/device/device_utility.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true, 
      indicatorColor: TColors.primaryColors,
      // unselectedLabelColor: TColors.darkGrey,
      labelColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.primaryColors,
      tabs: const [
        Tab(child: Text("Sports")),
        Tab(child: Text("Fourniture")),
        Tab(child: Text("Electonics")),
        Tab(child: Text("Clothes")),
        Tab(child: Text("Cosmetics")),
      ]
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
