import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class TopInwardBendClipper extends CustomClipper<Path> {
  final double inwardness;

  TopInwardBendClipper({required this.inwardness});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height); // Start at the bottom-left corner
    path.lineTo(size.width, size.height); // Line to the top-right corner
    path.lineTo(size.width, 0); // Line to the top-right corner
    path.quadraticBezierTo(size.width / 2, inwardness, 0,
        0); // Curve to the bottom-right corner
    path.close();

    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class GoalSection extends StatelessWidget {
  const GoalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopInwardBendClipper(inwardness: MediaQuery.of(context).size.width * 0.1),
      child: Container(
        height: 400,
        color: Colors.blue[900],
      ),
    );
  }
}
