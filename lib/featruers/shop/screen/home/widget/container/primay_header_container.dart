import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../curved_edge-widget.dart';
import 'circular_container.dart';

class OPrimaryHeaderContainer extends StatelessWidget {
  const OPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return OCurveEdgeWidget(
      child: Container(
          color: OColors.primary,
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            height: 500,
            child: Stack(
              children: [
                Positioned(top: -150, right: -250, child:OCircularContainer(backgroundColor: OColors.textWhite.withOpacity(0.1))),
                Positioned(top: 100, right: -300, child:OCircularContainer(backgroundColor: OColors.textWhite.withOpacity(0.1))),
              ],
            ),
          )
      ),
    );
  }
}