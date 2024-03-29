
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:e_commerce_pro/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
      Key? key, 
      this.showBackArrow = false, 
      this.title, 
      this.leadingIcon, 
      this.actions, 
      this.leadingOnPressed,
  }) : super(key: key);

  final bool showBackArrow;
  final Widget? title;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow 
        ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left), color: dark ? TColors.white : TColors.dark,) 
        : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))  : null,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}