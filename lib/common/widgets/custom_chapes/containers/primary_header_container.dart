
import 'package:e_commerce_pro/common/widgets/custom_chapes/containers/circular_container.dart';
import 'package:e_commerce_pro/common/widgets/custom_chapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurveEdgeWidget(
      child: Container(
        color: TColors.primaryColors,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250 ,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
              Positioned(top: 100, right: -300 ,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
            ],
          ),
        ),
      ),
    );
  }
}
