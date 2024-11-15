import 'package:e_commerce_pro/common/widgets/appBar/appBar.dart';
import 'package:e_commerce_pro/features/shop/screens/orders/widgets/order_list.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
        appBar: TAppBar(
          title: Text("My Orders", style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true,),
        body:const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),

          /// -- Orders
          child: TOrderListItems(),
        ),
    );
  }
}