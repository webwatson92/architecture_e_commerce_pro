
import 'package:e_commerce_pro/common/widgets/custom_chapes/curved_edges/curved_edge.dart';
import 'package:flutter/material.dart';

class TCurveEdgeWidget extends StatelessWidget {
  const TCurveEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}

