import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/containers/circular_container.dart';
import 'package:t_store/common/widgets/shapes/curved_edge.dart';
import 'package:t_store/utils/constants/color.dart';

class HPrimaryHeaderContainer extends StatelessWidget {
  const HPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return HCurvedEdge(
      child: Container(
        color: HColor.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: HCircularContainer(
                backgroundColor: HColor.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -350,
              child: HCircularContainer(
                backgroundColor: HColor.textWhite.withOpacity(0.1),
              ),
            ),

            /// --
            child,
          ],
        ),
      ),
    );
  }
}
