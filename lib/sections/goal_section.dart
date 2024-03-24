import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class TopInwardBendClipper extends CustomClipper<Path> {
  final double inwardness;

  TopInwardBendClipper({required this.inwardness});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height); // Start at the bottom-left corner
    path.quadraticBezierTo(
        size.width / 2, size.height - inwardness, size.width, size.height);
    path.lineTo(size.width, 0); // Line to the top-right corner
    path.quadraticBezierTo(
        size.width / 2, inwardness, 0, 0); // Curve to the bottom-right corner
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
      clipper: TopInwardBendClipper(
          inwardness: MediaQuery.of(context).size.width * 0.1),
      child: Container(
        color: Colors.blue[900],
        constraints: const BoxConstraints(minHeight: 3000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Projektet og målet".toUpperCase(),
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 55,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
