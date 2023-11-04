import 'package:flutter/material.dart';

class HCurvedEdge extends StatelessWidget {
  const HCurvedEdge({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _HCurvedEdgeClipper(),
      child: child,
    );
  }
}

class _HCurvedEdgeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    late Offset offsetLeft, offsetRight;

    offsetLeft = Offset(0, size.height - 20);
    offsetRight = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        offsetLeft.dx, offsetLeft.dy, offsetRight.dx, offsetRight.dy);

    offsetLeft = Offset(0, size.height - 20);
    offsetRight = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        offsetLeft.dx, offsetLeft.dy, offsetRight.dx, offsetRight.dy);

    offsetLeft = Offset(size.width, size.height - 20);
    offsetRight = Offset(size.width, size.height);
    path.quadraticBezierTo(
        offsetLeft.dx, offsetLeft.dy, offsetRight.dx, offsetRight.dy);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(_HCurvedEdgeClipper oldClipper) => true;
}
