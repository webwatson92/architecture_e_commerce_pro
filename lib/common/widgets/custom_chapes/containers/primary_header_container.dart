
import 'package:e_commerce_pro/common/widgets/custom_chapes/curved_edges/curved_edge.dart';
import 'package:e_commerce_pro/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: Container(
        color: TColors.primaryColors,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: child,
        ),
      ),
    );
  }
}
