import 'package:flutter/material.dart';

import 'curved_edge.dart';

class OCurveEdgeWidget extends StatelessWidget {
  const OCurveEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OCustomCurvedEdges(),
      child : child,
    );
  }
}